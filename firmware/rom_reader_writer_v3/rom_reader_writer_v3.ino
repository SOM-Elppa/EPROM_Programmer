#include <stdint.h>
#include <SerialCommand.h>

//Pin ST_CP del 74HC595
int latchPin = 10;
//Pin SH_CP del 74HC595
int clockPin = 12;
//Pin DS dek 74HC595
int dataPin = 11;
// Direccion máxima a leer (512Kb 27C512)
#define MAX_ADDR 65536L
// Definición pin Q0 o Data 0 de la EPROM
#define Q0 2
// Definición pin OE (IRF540) - HIGH 0v , LOW 12,5v
#define OE A0  // En la PCB es el A0
// Definición pin CE
#define CE A1

// Objeto para parsear los comandos serie
SerialCommand sCmd;

// Array para almacenar en formato texto los 16 bytes que se leen de cada dirección de la EPROM
char txt[16];

// ELPPA RULES cadena
byte save[11] = { 69, 76, 80, 80, 65, 32, 82, 85, 76, 69, 83 };

// variable para incrementar el array save
int inc = 0;

// Dirección inicial de la EPROM
uint32_t addr = 0; //50550;

void setup()
{
  // Pines 74HC595 de salida
  pinMode(latchPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  // Pin OE de salida
  pinMode(OE, OUTPUT);
  // Pin CE de salida
  pinMode(CE, OUTPUT);
  Serial.begin(19200);
  // IRF540 nivel Alto 0V
  digitalWrite(OE, HIGH);

  // Definición de las funciones de los comandos a parsear
  sCmd.addCommand("R", ReadEPROM);  // Lee el contenido de la EPROM en un rango de direcciones
  sCmd.addCommand("W", WriteEPROM); // Graba un byte en una dirección de la eprom.
}

void loop()
{
  sCmd.readSerial();
}

/*****************************************************************
    Funciones que se ejecutarán al parsesar los comandos
 ****************************************************************/

void ReadEPROM()
{
  // Inicializar variables direccion inicial y final
  uint32_t addr_ini = 0;
  uint32_t addr_fin = 0;
  char *arg;

  digitalWrite(OE, HIGH);

  // Primer argumento direccion inicial
  arg = sCmd.next();
  if (arg != NULL)
  {
    addr_ini = atol(arg);
  }

  // Segundo argumento direccion final.
  arg = sCmd.next();
  if (arg != NULL)
  {
    addr_fin = atol(arg);
  }

  //      Leer la memoria
  while (addr_ini <= addr_fin)
  {
    // Enviar los bytes al puerto serie
    uint8_t b = dbus_read(addr_ini);
    print_byte(b);
    addr_ini++;
  }

}

void WriteEPROM()
{
  // Inicializar variables direccion a grabar
  uint32_t addr = 0;
  byte valor = 0;
  char *arg;

  digitalWrite(OE, HIGH);

  // Primer argumento direccion a grabar
  arg = sCmd.next();
  if (arg != NULL)
  {
    addr = atol(arg);
  }


  // Segundo argumento byte a grabar.
  arg = sCmd.next();
  if (arg != NULL)
  {
    valor = atoi(arg);
    dbus_output();
    delay(25);
    for (int cont = 1; cont < 25; cont++)
    {
      fast_write(addr, valor);
      digitalWrite(OE, LOW);
      delay(10);
    }
//    digitalWrite(OE, HIGH);
//    addr_write(MAX_ADDR);
//    dbus_write(0);
  }
}
/*****************************************************************
    Funciones Lectura / Escritura ROM
 ****************************************************************/

// Activar bus de datos como Entrada
void dbus_input()
{
  // Recorre los pines Dx del arduino y los pone como entrada
  for (int i = Q0; i < Q0 + 8; i++)
    pinMode(i, INPUT);
}

// Activar bus de datos como Salida
void dbus_output()
{
  // Recorre los pines Dx del arduino y los pone como salida
  for (int i = Q0; i < Q0 + 8; i++)
    pinMode(i, OUTPUT);
}

// Seleccionar la dirección de la ROM para lectura/escritura
void addr_write(uint32_t addr)
{
  // obtiene la parte alta del byte de la dirección de 16 bits
  byte hi = addr >> 8;
  // obtiene la parte baja del byte de la dirección de 16 bits
  byte low = addr & 0xff;
  // Seleccionar dirección Ax en el 74HC595 mediante desplazamiento.
  // Pin del LATCH a nivel bajo para desactiar las salidas del 74HC595
  digitalWrite(latchPin, LOW);
  // Enviar la parte alta de la dirección 16 bits.
  shiftOut(dataPin, clockPin, MSBFIRST, hi);
  // Enviar la parte baja de la dirección 16 bits.
  shiftOut(dataPin, clockPin, MSBFIRST, low);
  // Pin del LATCH a nivel alto para activar las salidas del 74HC595
  digitalWrite(latchPin, HIGH);
}

// Leer del bus de datos
byte dbus_read(uint32_t addr)
{
  // Variable que almacenará el byte leído de la ROM
  byte data = 0;
  // Indica que los pines Dx de arduino serán como entrada
  dbus_input();
  // Pin OE de la EPROM (22) A nivel alto para activar la salida de datos desde la ROM (OUTPUT ENABLE)
  // Esto hará que los datos se guarden en las salidas Q0-Q7 de la ROM (LATCH)
  // Comentado al usar el pin VPP para controlar la lectura / escritura
  // digitalWrite(OE, HIGH);
  digitalWrite(OE, HIGH);
  // Pin CE de la EPROM (20) A nivel bajo para activar la memoria (CHIP ENABLE)
  digitalWrite(CE, LOW);
  // Seleccionar la dirección de memoria de la EPROM a leer
  addr_write(addr);
  
  // Pin OE de la EPROM (22) A nivel bajo para desactivar la salida de datos desde la ROM (OUTPUT ENABLE)
  // En este punto los datos están almacenados en un LATCH de la EPROM
  // Comentado porque añadía un 0 después de leer todos los bytes si tiene el VPP conectado
  //digitalWrite(OE, LOW);
  
  // Leer cada bit almacenado en el LATCH de la memoria EPROM mediante los pines Dx de Arduino
  data =  ((digitalRead(Q0 + 7) << 7) +
           (digitalRead(Q0 + 6) << 6) +
           (digitalRead(Q0 + 5) << 5) +
           (digitalRead(Q0 + 4) << 4) +
           (digitalRead(Q0 + 3) << 3) +
           (digitalRead(Q0 + 2) << 2) +
           (digitalRead(Q0 + 1) << 1) +
           digitalRead(Q0));
  // Devolver el byte leído.
  return data;
}

// Escribir al bus de datos
void dbus_write(byte b)
{
  digitalWrite(Q0, (b & 1) ? HIGH : LOW);
  digitalWrite(Q0 + 1, (b & 2) ? HIGH : LOW);
  digitalWrite(Q0 + 2, (b & 4) ? HIGH : LOW);
  digitalWrite(Q0 + 3, (b & 8) ? HIGH : LOW);
  digitalWrite(Q0 + 4, (b & 16) ? HIGH : LOW);
  digitalWrite(Q0 + 5, (b & 32) ? HIGH : LOW);
  digitalWrite(Q0 + 6, (b & 64) ? HIGH : LOW);
  digitalWrite(Q0 + 7, (b & 128) ? HIGH : LOW);
}

// Grabar un byte en dirección de ROM específica
void fast_write(unsigned int address, byte data)
{
  // Seleccionar dirección EPROM
  addr_write(address);
  // Enviar Byte a la EPROM
  dbus_write(data);
  // Relé a nivel alto 12,5v graba los datos en la EPROM
  //digitalWrite(OE, LOW); //VPP
  digitalWrite(CE, LOW);
  delayMicroseconds(100);
}


/*****************************************************************
    Funciones de conversión byte a HEX
 ****************************************************************/

// Imprimir el byte en formato HEX
void print_byte(byte data)
{
  //if (data < 0x10) Serial.print("0");
  //Serial.print(data, HEX);
  Serial.write(data);
}

// Imprimir la dirección formato HEX 4 bytes
void print_addr(unsigned int address)
{
  Serial.print("0x");
  if (address < 0x0010) Serial.print("0");
  if (address < 0x0100) Serial.print("0");
  if (address < 0x1000) Serial.print("0");
  Serial.print(address, HEX);
  Serial.print(" : ");
}

// Convertir HEX a Byte (0-F)
byte hex_to_digit(char c)
{
  if (c >= '0' && c <= '9') {
    return c - '0';
  }
  else if (c >= 'a' && c <= 'f') {
    return c - 'a' + 10;
  }
  else if (c >= 'A' && c <= 'F') {
    return c - 'A' + 10;
  }
  else {
    return 0;
  }
}
// Convertir Byte HEX a Byte (00-FF)
byte hex_to_byte(char* a)
{
  return ((hex_to_digit(a[0]) * 16) + hex_to_digit(a[1]));
}

// Convertir Word HEX a Word (2 Byte) para direcciones (0000-FFFF)
unsigned int hex_to_word(char* data)
{
  return ((hex_to_digit(data[0]) * 4096) +
          (hex_to_digit(data[1]) * 256) +
          (hex_to_digit(data[2]) * 16) +
          (hex_to_digit(data[3])));
}
