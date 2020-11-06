EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7350 7500 0    60   ~ 12
Lector/programador EPROM para ELPPA
Text Notes 8150 7650 0    60   ~ 12
07/01/2017\n
$Comp
L Programador-EPROM-rescue:74HC595-Programador-EPROM-rescue U1
U 1 1 5A5264E5
P 2800 1850
F 0 "U1" H 2950 2450 50  0000 C CNN
F 1 "74HC595" H 2800 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0000 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:74HC595-Programador-EPROM-rescue U2
U 1 1 5A526548
P 2800 3450
F 0 "U2" H 2950 4050 50  0000 C CNN
F 1 "74HC595" H 2800 2850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2800 3450 50  0001 C CNN
F 3 "" H 2800 3450 50  0000 C CNN
	1    2800 3450
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR01
U 1 1 5A526EC3
P 2000 3800
F 0 "#PWR01" H 2000 3550 50  0001 C CNN
F 1 "GND" H 2000 3650 50  0000 C CNN
F 2 "" H 2000 3800 50  0000 C CNN
F 3 "" H 2000 3800 50  0000 C CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:27C512-Programador-EPROM-rescue U3
U 1 1 5A52720C
P 5700 2300
F 0 "U3" H 5400 3350 50  0000 C CNN
F 1 "27C512" H 5700 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5700 2300 50  0001 C CNN
F 3 "" H 5700 2300 50  0000 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR03
U 1 1 5A52966C
P 5700 3450
F 0 "#PWR03" H 5700 3200 50  0001 C CNN
F 1 "GND" H 5700 3300 50  0000 C CNN
F 2 "" H 5700 3450 50  0000 C CNN
F 3 "" H 5700 3450 50  0000 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3300 5700 3450
$Comp
L Programador-EPROM-rescue:Jack-DC-Programador-EPROM-rescue J1
U 1 1 5A528DC1
P 5050 6050
F 0 "J1" H 5050 6260 50  0000 C CNN
F 1 "Jack-DC" H 5050 5875 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 5100 6010 50  0001 C CNN
F 3 "" H 5100 6010 50  0001 C CNN
	1    5050 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3300 2100 3300
$Comp
L Programador-EPROM-rescue:+12V-Programador-EPROM-rescue #PWR04
U 1 1 5A5298EE
P 5950 6400
F 0 "#PWR04" H 5950 6250 50  0001 C CNN
F 1 "+12V" H 5950 6540 50  0000 C CNN
F 2 "" H 5950 6400 50  0001 C CNN
F 3 "" H 5950 6400 50  0001 C CNN
	1    5950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6350 5150 6650
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR05
U 1 1 5A529A1B
P 5000 6900
F 0 "#PWR05" H 5000 6650 50  0001 C CNN
F 1 "GND" H 5000 6750 50  0000 C CNN
F 2 "" H 5000 6900 50  0001 C CNN
F 3 "" H 5000 6900 50  0001 C CNN
	1    5000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6350 4950 6500
Wire Wire Line
	4950 6500 5000 6500
Wire Wire Line
	5050 6500 5050 6350
Wire Wire Line
	5000 6500 5000 6900
Connection ~ 5000 6500
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR06
U 1 1 5A52A3F1
P 3100 6700
F 0 "#PWR06" H 3100 6450 50  0001 C CNN
F 1 "GND" H 3100 6550 50  0000 C CNN
F 2 "" H 3100 6700 50  0001 C CNN
F 3 "" H 3100 6700 50  0001 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:LED-Programador-EPROM-rescue D2
U 1 1 5A52A80A
P 1800 6600
F 0 "D2" H 1800 6700 50  0000 C CNN
F 1 "LED" H 1800 6500 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 1800 6600 50  0001 C CNN
F 3 "" H 1800 6600 50  0001 C CNN
	1    1800 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3300 1500 3250
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR07
U 1 1 5A5BC634
P 2000 2200
F 0 "#PWR07" H 2000 1950 50  0001 C CNN
F 1 "GND" H 2000 2050 50  0000 C CNN
F 2 "" H 2000 2200 50  0000 C CNN
F 3 "" H 2000 2200 50  0000 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3600 2000 3600
Wire Wire Line
	2100 2000 2000 2000
Wire Wire Line
	2000 2000 2000 2200
$Comp
L Programador-EPROM-rescue:+12V-Programador-EPROM-rescue #PWR08
U 1 1 5A5BC870
P 1150 6150
F 0 "#PWR08" H 1150 6000 50  0001 C CNN
F 1 "+12V" H 1150 6290 50  0000 C CNN
F 2 "" H 1150 6150 50  0001 C CNN
F 3 "" H 1150 6150 50  0001 C CNN
	1    1150 6150
	1    0    0    -1  
$EndComp
NoConn ~ 3500 3900
Wire Wire Line
	1150 6150 1150 6250
$Comp
L Programador-EPROM-rescue:L7806-Programador-EPROM-rescue U5
U 1 1 5A5BC963
P 3100 6250
F 0 "U5" H 2950 6375 50  0000 C CNN
F 1 "L7806" H 3100 6375 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3125 6100 50  0001 L CIN
F 3 "" H 3100 6200 50  0001 C CNN
	1    3100 6250
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:R-Programador-EPROM-rescue R1
U 1 1 5A5BCB7E
P 1800 7100
F 0 "R1" V 1880 7100 50  0000 C CNN
F 1 "560Ω" V 1800 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 7100 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR09
U 1 1 5A5BCBFE
P 1800 7400
F 0 "#PWR09" H 1800 7150 50  0001 C CNN
F 1 "GND" H 1800 7250 50  0000 C CNN
F 2 "" H 1800 7400 50  0001 C CNN
F 3 "" H 1800 7400 50  0001 C CNN
	1    1800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6450 1800 6250
Connection ~ 1800 6250
Wire Wire Line
	1800 6750 1800 6950
Wire Wire Line
	1800 7250 1800 7400
Wire Wire Line
	3100 6550 3100 6700
Wire Wire Line
	3400 6250 3700 6250
Wire Wire Line
	3700 6250 3700 6100
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR010
U 1 1 5A5BD0B3
P 5700 1300
F 0 "#PWR010" H 5700 1150 50  0001 C CNN
F 1 "+5V" H 5700 1440 50  0000 C CNN
F 2 "" H 5700 1300 50  0001 C CNN
F 3 "" H 5700 1300 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR011
U 1 1 5A5BD12F
P 1500 1650
F 0 "#PWR011" H 1500 1500 50  0001 C CNN
F 1 "+5V" H 1500 1790 50  0000 C CNN
F 2 "" H 1500 1650 50  0001 C CNN
F 3 "" H 1500 1650 50  0001 C CNN
	1    1500 1650
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR012
U 1 1 5A5BD19B
P 1500 3250
F 0 "#PWR012" H 1500 3100 50  0001 C CNN
F 1 "+5V" H 1500 3390 50  0000 C CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "" H 1500 3250 50  0001 C CNN
	1    1500 3250
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR013
U 1 1 5A5BD247
P 3700 6100
F 0 "#PWR013" H 3700 5950 50  0001 C CNN
F 1 "+5V" H 3700 6240 50  0000 C CNN
F 2 "" H 3700 6100 50  0001 C CNN
F 3 "" H 3700 6100 50  0001 C CNN
	1    3700 6100
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR014
U 1 1 5A5BD343
P 10500 1250
F 0 "#PWR014" H 10500 1100 50  0001 C CNN
F 1 "+5V" H 10500 1390 50  0000 C CNN
F 2 "" H 10500 1250 50  0001 C CNN
F 3 "" H 10500 1250 50  0001 C CNN
	1    10500 1250
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR015
U 1 1 5A5BD38D
P 10550 3800
F 0 "#PWR015" H 10550 3550 50  0001 C CNN
F 1 "GND" H 10550 3650 50  0000 C CNN
F 2 "" H 10550 3800 50  0000 C CNN
F 3 "" H 10550 3800 50  0000 C CNN
	1    10550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1250 10500 1350
Wire Wire Line
	10500 1350 10300 1350
Wire Wire Line
	10500 1650 10300 1650
Connection ~ 10500 1350
Wire Wire Line
	10300 3550 10550 3550
Wire Wire Line
	10550 3550 10550 3650
Wire Wire Line
	10300 3650 10550 3650
Connection ~ 10550 3650
$Comp
L Programador-EPROM-rescue:D-Programador-EPROM-rescue D1
U 1 1 5A5BD986
P 5400 6650
F 0 "D1" H 5400 6750 50  0000 C CNN
F 1 "1N4001" H 5400 6550 50  0000 C CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 5400 6650 50  0001 C CNN
F 3 "" H 5400 6650 50  0001 C CNN
	1    5400 6650
	-1   0    0    1   
$EndComp
$Comp
L Programador-EPROM-rescue:D-Programador-EPROM-rescue D3
U 1 1 5A5BDAD7
P 2400 6600
F 0 "D3" H 2400 6700 50  0000 C CNN
F 1 "1N4001" H 2400 6500 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2400 6600 50  0001 C CNN
F 3 "" H 2400 6600 50  0001 C CNN
	1    2400 6600
	0    1    1    0   
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR017
U 1 1 5A5BDB26
P 2400 6900
F 0 "#PWR017" H 2400 6650 50  0001 C CNN
F 1 "GND" H 2400 6750 50  0000 C CNN
F 2 "" H 2400 6900 50  0001 C CNN
F 3 "" H 2400 6900 50  0001 C CNN
	1    2400 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6250 2400 6450
Connection ~ 2400 6250
Wire Wire Line
	2400 6750 2400 6900
$Comp
L Programador-EPROM-rescue:Conn_01x04-Programador-EPROM-rescue J2
U 1 1 5A5BF1C5
P 9250 4600
F 0 "J2" H 9250 4800 50  0000 C CNN
F 1 "Conn_01x04" H 9250 4300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9250 4600 50  0001 C CNN
F 3 "" H 9250 4600 50  0001 C CNN
	1    9250 4600
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR019
U 1 1 5A5BF2F0
P 8900 4350
F 0 "#PWR019" H 8900 4200 50  0001 C CNN
F 1 "+5V" H 8900 4490 50  0000 C CNN
F 2 "" H 8900 4350 50  0001 C CNN
F 3 "" H 8900 4350 50  0001 C CNN
	1    8900 4350
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR020
U 1 1 5A5BF322
P 8900 4950
F 0 "#PWR020" H 8900 4700 50  0001 C CNN
F 1 "GND" H 8900 4800 50  0000 C CNN
F 2 "" H 8900 4950 50  0001 C CNN
F 3 "" H 8900 4950 50  0001 C CNN
	1    8900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4500 8900 4500
Wire Wire Line
	8900 4500 8900 4350
Wire Wire Line
	9050 4800 8900 4800
Wire Wire Line
	8900 4800 8900 4950
$Comp
L Programador-EPROM-rescue:Crystal-Programador-EPROM-rescue Y1
U 1 1 5A5BF805
P 7150 4450
F 0 "Y1" H 7150 4600 50  0000 C CNN
F 1 "16MHz" H 7150 4300 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 7150 4450 50  0001 C CNN
F 3 "" H 7150 4450 50  0001 C CNN
	1    7150 4450
	0    1    1    0   
$EndComp
$Comp
L Programador-EPROM-rescue:C-Programador-EPROM-rescue C1
U 1 1 5A5BF890
P 6750 4250
F 0 "C1" H 6775 4350 50  0000 L CNN
F 1 "22pF" H 6775 4150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6788 4100 50  0001 C CNN
F 3 "" H 6750 4250 50  0001 C CNN
	1    6750 4250
	0    1    1    0   
$EndComp
$Comp
L Programador-EPROM-rescue:C-Programador-EPROM-rescue C2
U 1 1 5A5BF910
P 6750 4650
F 0 "C2" H 6775 4750 50  0000 L CNN
F 1 "22pF" H 6775 4550 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6788 4500 50  0001 C CNN
F 3 "" H 6750 4650 50  0001 C CNN
	1    6750 4650
	0    1    1    0   
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR021
U 1 1 5A5BFA6B
P 6300 4450
F 0 "#PWR021" H 6300 4200 50  0001 C CNN
F 1 "GND" H 6300 4300 50  0000 C CNN
F 2 "" H 6300 4450 50  0000 C CNN
F 3 "" H 6300 4450 50  0000 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4250 6450 4250
Wire Wire Line
	6300 4250 6300 4450
Wire Wire Line
	6600 4650 6450 4650
Wire Wire Line
	6450 4650 6450 4250
Connection ~ 6450 4250
Wire Wire Line
	6900 4250 7150 4250
Wire Wire Line
	7150 4250 7150 4300
Wire Wire Line
	7150 4600 7150 4650
Wire Wire Line
	6900 4650 7150 4650
Wire Notes Line
	8500 4100 9700 4100
Wire Notes Line
	9700 4100 9700 5300
Wire Notes Line
	9700 5300 8500 5300
Wire Notes Line
	8500 5300 8500 4100
Text Notes 8600 5450 0    60   ~ 0
Conector USB <-> TTL
Text Notes 5000 7450 0    60   ~ 0
Entrada 12V -14V
Wire Notes Line
	4700 5700 6100 5700
Wire Notes Line
	6100 5700 6100 7200
Wire Notes Line
	6100 7200 4700 7200
Wire Notes Line
	4700 7200 4700 5700
Wire Notes Line
	1000 5800 4200 5800
Wire Notes Line
	4200 5800 4200 7650
Wire Notes Line
	4200 7650 1000 7650
Wire Notes Line
	1000 7650 1000 5800
Text Notes 2550 7500 0    60   ~ 0
POWER
$Comp
L Programador-EPROM-rescue:ATMEGA328-PU-Programador-EPROM-rescue U4
U 1 1 5A63945D
P 9400 2450
F 0 "U4" H 8650 3700 50  0000 L BNN
F 1 "ATMEGA328-PU" H 9800 1050 50  0000 L BNN
F 2 "Package_DIP:DIP-28_W7.62mm_LongPads" H 9400 2450 50  0001 C CIN
F 3 "" H 9400 2450 50  0001 C CNN
	1    9400 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 6500 5050 6500
Wire Wire Line
	10500 1350 10500 1650
Wire Wire Line
	10550 3650 10550 3800
Wire Wire Line
	2400 6250 2800 6250
Wire Wire Line
	6450 4250 6300 4250
NoConn ~ 10300 1950
NoConn ~ 8400 1850
NoConn ~ 8400 2400
NoConn ~ 8400 2500
NoConn ~ 8400 2600
NoConn ~ 8400 2700
$Comp
L Switch:SW_Push SW1
U 1 1 5D87C3D9
P 7300 5800
F 0 "SW1" H 7300 6085 50  0000 C CNN
F 1 "SW_Push" H 7300 5994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7300 6000 50  0001 C CNN
F 3 "~" H 7300 6000 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR022
U 1 1 5D87DB95
P 6950 6000
F 0 "#PWR022" H 6950 5750 50  0001 C CNN
F 1 "GND" H 6950 5850 50  0000 C CNN
F 2 "" H 6950 6000 50  0001 C CNN
F 3 "" H 6950 6000 50  0001 C CNN
	1    6950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5800 6950 5800
Wire Wire Line
	6950 5800 6950 6000
$Comp
L Programador-EPROM-rescue:R-Programador-EPROM-rescue R3
U 1 1 5D885B5C
P 7700 5550
F 0 "R3" V 7780 5550 50  0000 C CNN
F 1 "1KΩ" V 7700 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 5550 50  0001 C CNN
F 3 "" H 7700 5550 50  0001 C CNN
	1    7700 5550
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR023
U 1 1 5D886D1A
P 7700 5300
F 0 "#PWR023" H 7700 5150 50  0001 C CNN
F 1 "+5V" H 7700 5440 50  0000 C CNN
F 2 "" H 7700 5300 50  0001 C CNN
F 3 "" H 7700 5300 50  0001 C CNN
	1    7700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5800 7700 5800
Wire Wire Line
	7700 5300 7700 5400
Wire Wire Line
	7700 5700 7700 5800
Connection ~ 7700 5800
Wire Wire Line
	7700 5800 8150 5800
Text GLabel 8150 5800 2    60   Input ~ 0
RESET
Text GLabel 8400 2800 0    60   Input ~ 0
RESET
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D8A0408
P 5650 6500
F 0 "#FLG0101" H 5650 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 5650 6673 50  0000 C CNN
F 2 "" H 5650 6500 50  0001 C CNN
F 3 "~" H 5650 6500 50  0001 C CNN
	1    5650 6500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D8A9179
P 6450 4100
F 0 "#FLG0102" H 6450 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 4273 50  0000 C CNN
F 2 "" H 6450 4100 50  0001 C CNN
F 3 "~" H 6450 4100 50  0001 C CNN
	1    6450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4100 6450 4250
$Comp
L Connector:TestPoint TP1
U 1 1 5DCBBB36
P 1800 6100
F 0 "TP1" H 1858 6218 50  0000 L CNN
F 1 "TestPoint" H 1858 6127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.5x2.5mm" H 2000 6100 50  0001 C CNN
F 3 "~" H 2000 6100 50  0001 C CNN
	1    1800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6100 1800 6250
$Comp
L Connector:TestPoint TP2
U 1 1 5DCC44F5
P 5550 4600
F 0 "TP2" V 5550 4800 50  0000 L CNN
F 1 "TestPoint" V 5450 4600 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.5x2.5mm" H 5750 4600 50  0001 C CNN
F 3 "~" H 5750 4600 50  0001 C CNN
	1    5550 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 6650 5250 6650
Wire Wire Line
	5550 6650 5650 6650
Wire Wire Line
	5950 6650 5950 6400
Wire Wire Line
	5650 6500 5650 6650
Connection ~ 5650 6650
Wire Wire Line
	5650 6650 5950 6650
Wire Wire Line
	1150 6250 1800 6250
Wire Wire Line
	1800 6250 2400 6250
$Comp
L Device:C C3
U 1 1 5DD0FF24
P 7300 6000
F 0 "C3" V 7350 6100 50  0000 C CNN
F 1 "0.1µF" V 7450 6000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7338 5850 50  0001 C CNN
F 3 "~" H 7300 6000 50  0001 C CNN
	1    7300 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5800 7100 6000
Wire Wire Line
	7100 6000 7150 6000
Connection ~ 7100 5800
Wire Wire Line
	7450 6000 7700 6000
Wire Wire Line
	7700 6000 7700 5800
Text GLabel 3500 1400 2    60   Input ~ 0
ABUS_0
Text GLabel 3500 1500 2    60   Input ~ 0
ABUS_1
Text GLabel 3500 1600 2    60   Input ~ 0
ABUS_2
Text GLabel 3500 1700 2    60   Input ~ 0
ABUS_3
Text GLabel 3500 1800 2    60   Input ~ 0
ABUS_4
Text GLabel 3500 1900 2    60   Input ~ 0
ABUS_5
Text GLabel 3500 2000 2    60   Input ~ 0
ABUS_6
Text GLabel 3500 2100 2    60   Input ~ 0
ABUS_7
Text GLabel 5000 1400 0    60   Input ~ 0
ABUS_0
Text GLabel 5000 2100 0    60   Input ~ 0
ABUS_7
Text GLabel 5000 2000 0    60   Input ~ 0
ABUS_6
Text GLabel 5000 1900 0    60   Input ~ 0
ABUS_5
Text GLabel 5000 1800 0    60   Input ~ 0
ABUS_4
Text GLabel 5000 1700 0    60   Input ~ 0
ABUS_3
Text GLabel 5000 1600 0    60   Input ~ 0
ABUS_2
Text GLabel 5000 1500 0    60   Input ~ 0
ABUS_1
Text GLabel 3500 3000 2    60   Input ~ 0
ABUS_8
Text GLabel 3500 3100 2    60   Input ~ 0
ABUS_9
Text GLabel 3500 3200 2    60   Input ~ 0
ABUS_10
Text GLabel 3500 3300 2    60   Input ~ 0
ABUS_11
Text GLabel 3500 3400 2    60   Input ~ 0
ABUS_12
Text GLabel 3500 3500 2    60   Input ~ 0
ABUS_13
Text GLabel 3500 3600 2    60   Input ~ 0
ABUS_14
Text GLabel 3500 3700 2    60   Input ~ 0
ABUS_15
Text GLabel 5000 2200 0    60   Input ~ 0
ABUS_8
Text GLabel 5000 2300 0    60   Input ~ 0
ABUS_9
Text GLabel 5000 2400 0    60   Input ~ 0
ABUS_10
Text GLabel 5000 2500 0    60   Input ~ 0
ABUS_11
Text GLabel 5000 2600 0    60   Input ~ 0
ABUS_12
Text GLabel 5000 2700 0    60   Input ~ 0
ABUS_13
Text GLabel 5000 2800 0    60   Input ~ 0
ABUS_14
Text GLabel 5000 2900 0    60   Input ~ 0
ABUS_15
Text GLabel 6400 1400 2    60   Input ~ 0
DBUS_0
Text GLabel 6400 1500 2    60   Input ~ 0
DBUS_1
Text GLabel 6400 1600 2    60   Input ~ 0
DBUS_2
Text GLabel 6400 1700 2    60   Input ~ 0
DBUS_3
Text GLabel 6400 1800 2    60   Input ~ 0
DBUS_4
Text GLabel 6400 1900 2    60   Input ~ 0
DBUS_5
Text GLabel 6400 2000 2    60   Input ~ 0
DBUS_6
Text GLabel 6400 2100 2    60   Input ~ 0
DBUS_7
Text GLabel 8400 1350 0    60   Input ~ 0
DBUS_6
Text GLabel 8400 1450 0    60   Input ~ 0
DBUS_7
Text GLabel 8400 3150 0    60   Input ~ 0
DBUS_0
Text GLabel 8400 3250 0    60   Input ~ 0
DBUS_1
Text GLabel 8400 3350 0    60   Input ~ 0
DBUS_2
Text GLabel 8400 3450 0    60   Input ~ 0
DBUS_3
Text GLabel 8400 3550 0    60   Input ~ 0
DBUS_4
Text GLabel 8400 3650 0    60   Input ~ 0
DBUS_5
Text GLabel 2100 1600 0    60   Input ~ 0
SRCLK
Text GLabel 8400 1750 0    60   Input ~ 0
SRCLK
Text GLabel 2100 1900 0    60   Input ~ 0
RCLK
Text GLabel 8400 1550 0    60   Input ~ 0
RCLK
Text GLabel 2100 1400 0    60   Input ~ 0
SER
Text GLabel 8400 1650 0    60   Input ~ 0
SER
Text GLabel 8400 2300 0    60   Input ~ 0
CE
Text GLabel 5000 3100 0    60   Input ~ 0
CE
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR018
U 1 1 5A5BE3A9
P 4600 4850
F 0 "#PWR018" H 4600 4600 50  0001 C CNN
F 1 "GND" H 4600 4700 50  0000 C CNN
F 2 "" H 4600 4850 50  0000 C CNN
F 3 "" H 4600 4850 50  0000 C CNN
	1    4600 4850
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:R-Programador-EPROM-rescue R2
U 1 1 5A5BE156
P 3800 4700
F 0 "R2" V 3880 4700 50  0000 C CNN
F 1 "1KΩ" V 3800 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 4700 50  0001 C CNN
F 3 "" H 3800 4700 50  0001 C CNN
	1    3800 4700
	0    1    1    0   
$EndComp
$Comp
L Programador-EPROM-rescue:+12V-Programador-EPROM-rescue #PWR02
U 1 1 5A528EC3
P 5350 3900
F 0 "#PWR02" H 5350 3750 50  0001 C CNN
F 1 "+12V" H 5350 4040 50  0000 C CNN
F 2 "" H 5350 3900 50  0000 C CNN
F 3 "" H 5350 3900 50  0000 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
Text GLabel 5600 4950 2    60   Input ~ 0
OE
Text GLabel 5000 3200 0    60   Input ~ 0
OE
Text GLabel 8400 2200 0    60   Input ~ 0
RWPIN
Text GLabel 3550 4700 0    60   Input ~ 0
RWPIN
Text GLabel 8400 1950 0    60   Input ~ 0
XTAL1
Text GLabel 7250 4250 2    60   Input ~ 0
XTAL1
Text GLabel 8400 2050 0    60   Input ~ 0
XTAL2
Text GLabel 7250 4650 2    60   Input ~ 0
XTAL2
Wire Wire Line
	7150 4250 7250 4250
Connection ~ 7150 4250
Wire Wire Line
	7250 4650 7150 4650
Connection ~ 7150 4650
Text GLabel 8400 3050 0    60   Input ~ 0
TX
Text GLabel 9050 4600 0    60   Input ~ 0
TX
Text GLabel 8400 2950 0    60   Input ~ 0
RX
Text GLabel 9050 4700 0    60   Input ~ 0
RX
Text GLabel 2100 3500 0    60   Input ~ 0
RCLK
Text GLabel 2100 3200 0    60   Input ~ 0
SRCLK
Wire Wire Line
	1500 1650 1500 1700
Wire Wire Line
	1500 1700 2100 1700
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR0101
U 1 1 5DF18A1F
P 2500 1300
F 0 "#PWR0101" H 2500 1150 50  0001 C CNN
F 1 "+5V" H 2500 1440 50  0000 C CNN
F 2 "" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0001 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR0102
U 1 1 5DF1A8AD
P 2500 2900
F 0 "#PWR0102" H 2500 2750 50  0001 C CNN
F 1 "+5V" H 2500 3040 50  0000 C CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR0103
U 1 1 5DF20F74
P 2500 2400
F 0 "#PWR0103" H 2500 2150 50  0001 C CNN
F 1 "GND" H 2500 2250 50  0000 C CNN
F 2 "" H 2500 2400 50  0000 C CNN
F 3 "" H 2500 2400 50  0000 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR0104
U 1 1 5DF21426
P 2500 4000
F 0 "#PWR0104" H 2500 3750 50  0001 C CNN
F 1 "GND" H 2500 3850 50  0000 C CNN
F 2 "" H 2500 4000 50  0000 C CNN
F 3 "" H 2500 4000 50  0000 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2650 2100 2650
Wire Wire Line
	2100 2650 2100 3000
Wire Wire Line
	3500 2300 3500 2650
$Comp
L Device:CP C4
U 1 1 5E0A6477
P 1900 4900
F 0 "C4" H 2018 4946 50  0000 L CNN
F 1 "10uF" H 2018 4855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1938 4750 50  0001 C CNN
F 3 "~" H 1900 4900 50  0001 C CNN
	1    1900 4900
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:C-Programador-EPROM-rescue C5
U 1 1 5E0A7290
P 2400 4900
F 0 "C5" H 2425 5000 50  0000 L CNN
F 1 "0.01µF" H 2425 4800 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2438 4750 50  0001 C CNN
F 3 "" H 2400 4900 50  0001 C CNN
	1    2400 4900
	-1   0    0    1   
$EndComp
$Comp
L Programador-EPROM-rescue:C-Programador-EPROM-rescue C6
U 1 1 5E0A82AF
P 2650 4900
F 0 "C6" H 2675 5000 50  0000 L CNN
F 1 "0.1uF" H 2675 4800 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2688 4750 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	-1   0    0    1   
$EndComp
$Comp
L Programador-EPROM-rescue:+5V-Programador-EPROM-rescue #PWR016
U 1 1 5E0AACA4
P 2250 4600
F 0 "#PWR016" H 2250 4450 50  0001 C CNN
F 1 "+5V" H 2250 4740 50  0000 C CNN
F 2 "" H 2250 4600 50  0001 C CNN
F 3 "" H 2250 4600 50  0001 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR024
U 1 1 5E0AB5C5
P 2250 5200
F 0 "#PWR024" H 2250 4950 50  0001 C CNN
F 1 "GND" H 2250 5050 50  0000 C CNN
F 2 "" H 2250 5200 50  0001 C CNN
F 3 "" H 2250 5200 50  0001 C CNN
	1    2250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4600 2250 4700
Wire Wire Line
	2250 4700 1900 4700
Wire Wire Line
	1900 4700 1900 4750
Connection ~ 2250 4700
Wire Wire Line
	2650 4700 2650 4750
Wire Wire Line
	2250 4700 2400 4700
Wire Wire Line
	2400 4750 2400 4700
Connection ~ 2400 4700
Wire Wire Line
	2400 4700 2650 4700
Wire Wire Line
	2650 5050 2650 5150
Wire Wire Line
	2650 5150 2400 5150
Wire Wire Line
	2250 5150 2250 5200
Wire Wire Line
	2250 5150 1900 5150
Wire Wire Line
	1900 5150 1900 5050
Connection ~ 2250 5150
Wire Wire Line
	2400 5050 2400 5150
Connection ~ 2400 5150
Wire Wire Line
	2400 5150 2250 5150
$Comp
L Mechanical:MountingHole H1
U 1 1 5E0D4129
P 10250 5550
F 0 "H1" H 10350 5596 50  0000 L CNN
F 1 "MountingHole" H 10350 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10250 5550 50  0001 C CNN
F 3 "~" H 10250 5550 50  0001 C CNN
	1    10250 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E0D45D0
P 10250 6300
F 0 "H4" H 10350 6346 50  0000 L CNN
F 1 "MountingHole" H 10350 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10250 6300 50  0001 C CNN
F 3 "~" H 10250 6300 50  0001 C CNN
	1    10250 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E0D774A
P 10250 6050
F 0 "H3" H 10350 6096 50  0000 L CNN
F 1 "MountingHole" H 10350 6005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10250 6050 50  0001 C CNN
F 3 "~" H 10250 6050 50  0001 C CNN
	1    10250 6050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E0D7C5C
P 10250 5800
F 0 "H2" H 10350 5846 50  0000 L CNN
F 1 "MountingHole" H 10350 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10250 5800 50  0001 C CNN
F 3 "~" H 10250 5800 50  0001 C CNN
	1    10250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BEC Q2
U 1 1 5F0B0B24
P 5250 4200
F 0 "Q2" H 5200 4400 50  0000 L CNN
F 1 "Q_PNP_BEC" V 5450 4000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5450 4300 50  0001 C CNN
F 3 "~" H 5250 4200 50  0001 C CNN
	1    5250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5F0B44BF
P 4200 4700
F 0 "Q1" H 4150 4900 50  0000 L CNN
F 1 "Q_NPN_BCE" V 4400 4450 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4400 4800 50  0001 C CNN
F 3 "~" H 4200 4700 50  0001 C CNN
	1    4200 4700
	1    0    0    -1  
$EndComp
$Comp
L Programador-EPROM-rescue:C-Programador-EPROM-rescue C7
U 1 1 5F0B530B
P 4600 4500
F 0 "C7" H 4500 4600 50  0000 L CNN
F 1 "390nF" H 4350 4400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4638 4350 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	-1   0    0    1   
$EndComp
$Comp
L Programador-EPROM-rescue:GND-Programador-EPROM-rescue #PWR025
U 1 1 5F0C55FA
P 4300 5050
F 0 "#PWR025" H 4300 4800 50  0001 C CNN
F 1 "GND" H 4300 4900 50  0000 C CNN
F 2 "" H 4300 5050 50  0000 C CNN
F 3 "" H 4300 5050 50  0000 C CNN
	1    4300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4700 3650 4700
Wire Wire Line
	3950 4700 4000 4700
Wire Wire Line
	4300 4900 4300 5050
Wire Wire Line
	4300 4500 4300 4200
Wire Wire Line
	4300 4200 4600 4200
Wire Wire Line
	4600 4350 4600 4200
Connection ~ 4600 4200
Wire Wire Line
	4600 4200 4650 4200
Wire Wire Line
	4600 4650 4600 4850
Wire Wire Line
	4950 4200 5050 4200
Wire Wire Line
	5350 3900 5350 4000
Wire Wire Line
	5350 4950 5600 4950
Wire Wire Line
	5350 4400 5350 4600
Wire Wire Line
	5550 4600 5350 4600
Connection ~ 5350 4600
Wire Wire Line
	5350 4600 5350 4950
$Comp
L Programador-EPROM-rescue:R-Programador-EPROM-rescue R4
U 1 1 5F0EA1DB
P 4800 4200
F 0 "R4" V 4880 4200 50  0000 C CNN
F 1 "1KΩ" V 4800 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3600 2000 3800
$EndSCHEMATC
