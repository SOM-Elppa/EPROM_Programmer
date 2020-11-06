#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Formato de la barra de progreso
    m_progress->setVisible(true);
    m_progress->show();
    m_progress->setFormat("");
    ui->statusBar->addPermanentWidget(m_progress);

    // Obtener lista de puertos serie.
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos)
        ui->serialList->addItem(info.portName());

    // Controlar los componentes de la ventana para activarlos/desactivarlos
    if ( serial.isOpen() == false )
    {
        ui->statusBar->showMessage("Desconectado");
        ui->connectButton->setText("Conectar");
        ui->readButton->setDisabled(true);
        ui->startSlider->setDisabled(true);
        ui->endSlider->setDisabled(true);
        ui->startSpin->setDisabled(true);
        ui->endSpin->setDisabled(true);
        m_progress->setDisabled(true);
     }
     else
     {
        ui->statusBar->showMessage("Conectado a " + s_port);
        ui->connectButton->setText("Desconec.");
        ui->readButton->setDisabled(false);
        ui->startSlider->setDisabled(false);
        ui->endSlider->setDisabled(false);
        ui->startSpin->setDisabled(false);
        ui->endSpin->setDisabled(false);
        m_progress->setDisabled(false);
     }

    // Valores por defecto de los sliders
    ui->startSlider->setValue(0);
    ui->endSlider->setValue(65535);

    // Limpiar variables
    clearvars();

    // Formato de salida de los SpinBox
    QFont font = ui->startSpin->font();
    font.setCapitalization(QFont::AllUppercase);
    ui->startSpin->setFont(font);
    font = ui->endSpin->font();
    font.setCapitalization(QFont::AllUppercase);
    ui->endSpin->setFont(font);
}

MainWindow::~MainWindow()
{
    delete ui;
}

// Conecta el puerto seleccionado
void MainWindow::on_connectButton_clicked()
{
     s_port = ui->serialList->currentText();
     serial.setPortName(s_port);
     serial.setBaudRate(QSerialPort::Baud19200);
     serial.setDataBits(QSerialPort::Data8);
     serial.setParity(QSerialPort::NoParity);
     serial.setStopBits(QSerialPort::OneStop);
     serial.setFlowControl(QSerialPort::NoFlowControl);
     serial.setReadBufferSize(max_size_EPROM);
     clearvars();

     // Controlar los componentes de la ventana para activarlos/desactivarlos
     if ( serial.isOpen() == false )
     {
         serial.open(QIODevice::ReadWrite);
         ui->statusBar->showMessage("Conectado a " + s_port);
         ui->connectButton->setText("Desconec.");
         ui->readButton->setDisabled(false);
         ui->startSlider->setDisabled(false);
         ui->endSlider->setDisabled(false);
         ui->startSpin->setDisabled(false);
         ui->endSpin->setDisabled(false);
         m_progress->setDisabled(false);
         clearvars();
     }
      else
      {
         serial.close();
         ui->statusBar->showMessage("Desconectado");
         ui->connectButton->setText("Conectar");
         ui->readButton->setDisabled(true);
         ui->startSlider->setDisabled(true);
         ui->endSlider->setDisabled(true);
         ui->startSpin->setDisabled(true);
         ui->endSpin->setDisabled(true);
         m_progress->setDisabled(true);
      }
}

// Refresca los puertos serie encontrados.
void MainWindow::on_refreshportsButton_clicked()
{
    ui->serialList->clear();
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos)
        ui->serialList->addItem(info.portName());
}

// Botón leer memoria EPROM
void MainWindow::on_readButton_clicked()
{
    // Limpiar cuadro texto y variables
    clearvars();
    // valores inicio y final de lectura
    startValue = ui->startSlider->value();
    endValue = ui->endSlider->value();
    // Rango de la barra de progreso
    m_progress->setRange(0,(endValue-startValue));
    // Color de la barra de progreso
    QPalette palette = m_progress->palette();
    palette.setColor(QPalette::Highlight, Qt::darkGreen);
    m_progress->setPalette(palette);
    m_progress->setFormat("Leyendo EPROM ...");
    // Enviar caracter para comenzar la lectura
    serial.flush();
    QString readcmd;
    readcmd = "R ";
    readcmd += QString::number(startValue);
    readcmd += " ";
    readcmd += QString::number(endValue);
    readcmd += "\r\n";
    serial.write(readcmd.toUtf8());
    connect(&serial, SIGNAL(readyRead()), this, SLOT(handleReadEPROM()));
}

// Lee bytes de la EPROM y los muestra en cuadro de texto
void MainWindow::handleReadEPROM()
{
    serial.waitForReadyRead(500);
    uint8_t c;
    b_data= serial.readLine();
    for (int byte=0;byte<b_data.length();byte++)
    {
        c = b_data.at(byte);

        // Texto dirección de memoria en HEX
        Hex_EPROM_addr = QString("%1").arg(EPROM_addr+(ui->startSlider->value()),4,16,QLatin1Char('0')).toUpper();
        Hex_EPROM_addr += " : ";

        // Byte leído en HEX
        s_out += QString("%1").arg(c,2,16,QLatin1Char('0')).toUpper();
        s_out += " ";

        // Byte leído en ASCII
        asciiEPROM += char(c);

        byte_line_count++;

        // Cuando se han leído ya 16bytes, salto de línea
        if (byte_line_count == max_byte_line)
        {
            // Bytes leídos en ASCII
            s_out+="   ";
            s_out += asciiEPROM;
            s_out+="\r\n";

            // Montar Cadena texto para salida en cuadro de text:
            TextBox_line += "0x";
            TextBox_line += Hex_EPROM_addr;
            TextBox_line += s_out;

            // Barra progreso
            barValue+=byte_line_count;

            // Inicializar contadores y cadenas de texto
            Hex_EPROM_addr = "";
            s_out = "";
            asciiEPROM = "";
            EPROM_addr = EPROM_addr + max_byte_line;
            byte_line_count = 0;
        }
    }

    // Mostrar lectura EPROM
    ui->serialOut->setText(TextBox_line);

    // Mostrar barra de progreso
    m_progress->setValue(barValue);
    if (barValue>=endValue)
        m_progress->setFormat("EPROM Leída");
}

// Limpiar variables
void MainWindow::clearvars()
{
    ui->serialOut->clear();
    b_data = nullptr;
    s_out = "";
    EPROM_addr = 0;
    byte_line_count = 0;
    TextBox_line = "";
    Hex_EPROM_addr = nullptr;
    asciiEPROM = "";
    m_progress->setValue(0);
    m_progress->setFormat("");
    startValue = 0;
    endValue = 0;
    barValue = 0;
}

// Slider inicio EPROM
void MainWindow::on_startSlider_valueChanged(int value)
{
    ui->startSpin->setValue(value);
    if (ui->endSlider->value()<value)
    {
        ui->endSlider->setValue(value);
        ui->endSpin->setValue(value);
    }
    startValue = value;
}
void MainWindow::on_startSlider_sliderMoved(int position)
{
//    ui->startSlider->setValue(roundUp(position,16));
}

// Slider final EPROM
void MainWindow::on_endSlider_valueChanged(int value)
{
    ui->endSpin->setValue(value);
    if (ui->startSlider->value()>value)
    {
        ui->startSlider->setValue(value);
        ui->startSpin->setValue(value);
    }
    endValue = value;
}
void MainWindow::on_endSlider_sliderMoved(int position)
{
//    ui->startSlider->setValue(roundUp(position,16));
}

// SpinBox inicio EPROM
void MainWindow::on_startSpin_valueChanged(int arg1)
{
    ui->startSlider->setValue(arg1);
}

// SpinBox final EPROM
void MainWindow::on_endSpin_valueChanged(int arg1)
{
    ui->endSlider->setValue(arg1);
}

// Función para redondear a la alta por un múltpile (usado en Slider por si se desliza con el mouse)
// Revisar, no funciona.
int MainWindow::roundUp(int numToRound, int multiple)
{
    assert(multiple);
    return ((numToRound + multiple - 1) / multiple) * multiple;
}



