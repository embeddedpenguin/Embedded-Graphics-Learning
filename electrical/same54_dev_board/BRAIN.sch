EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 2 1 5E82C3BA
P 6800 1600
F 0 "U1" H 6908 2665 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 6908 2574 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 5600 2850 50  0001 C CNN
F 3 "" H 5600 2850 50  0001 C CNN
	2    6800 1600
	1    0    0    -1  
$EndComp
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 3 1 5E82DE73
P 8950 1650
F 0 "U1" H 9058 2665 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 9058 2574 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 7750 2900 50  0001 C CNN
F 3 "" H 7750 2900 50  0001 C CNN
	3    8950 1650
	1    0    0    -1  
$EndComp
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 4 1 5E8352A8
P 10250 1800
F 0 "U1" H 10358 2865 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 10358 2774 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 9050 3050 50  0001 C CNN
F 3 "" H 9050 3050 50  0001 C CNN
	4    10250 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 5EA1E350
P 4400 5700
F 0 "J2" H 3957 5746 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 3957 5655 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 4400 5700 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 4050 4450 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
Wire Notes Line
	7200 4200 11150 4200
Wire Notes Line
	11150 4200 11150 6450
Wire Notes Line
	11150 6450 7200 6450
Wire Notes Line
	7200 6450 7200 4200
Text Notes 7250 5100 0    50   ~ 0
Brain -- aka ATSAME54P20A_AU\n - 120Mhz Core Clock\n - 32khz External Clock (for startup)\n - 12(?)Mhz Alt Clock (probably unused, but adding it just in case)\n - 3 Sercoms\n    - 1 I2C\n    - 1 SPI\n    - 1 U(S)ART\n - Interfaces with IO Extender for parallel bus control without sacrificing pins\n - The E54 has a shitty pin set for parallel control (not bc of no. of pins, but \nbecause of positions and default pin functions)
$Comp
L Device:Crystal Y1
U 1 1 5E75D825
P 5000 1300
F 0 "Y1" V 5046 1169 50  0000 R CNN
F 1 "XOSC32" V 4955 1169 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 5000 1300 50  0001 C CNN
F 3 "~" H 5000 1300 50  0001 C CNN
	1    5000 1300
	0    -1   -1   0   
$EndComp
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 1 1 5E82A2F6
P 3650 2000
F 0 "U1" H 3733 3165 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 3733 3074 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    3650 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E7E5146
P 5100 1050
F 0 "C1" V 4871 1050 50  0000 C CNN
F 1 "6.8pF" V 4962 1050 50  0000 C CNN
F 2 "" H 5100 1050 50  0001 C CNN
F 3 "~" H 5100 1050 50  0001 C CNN
	1    5100 1050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E7E6123
P 5100 1550
F 0 "C2" V 4871 1550 50  0000 C CNN
F 1 "6.8pF" V 4950 1500 50  0000 C CNN
F 2 "" H 5100 1550 50  0001 C CNN
F 3 "~" H 5100 1550 50  0001 C CNN
	1    5100 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 1350 4250 1350
Wire Wire Line
	4800 1250 4250 1250
Wire Wire Line
	5000 1050 5000 1150
Wire Wire Line
	5000 1550 5000 1450
Wire Wire Line
	4800 1550 5000 1550
Wire Wire Line
	4800 1350 4800 1550
Connection ~ 5000 1550
Wire Wire Line
	4800 1050 5000 1050
Wire Wire Line
	4800 1050 4800 1250
Connection ~ 5000 1050
Wire Wire Line
	5200 1050 5450 1050
Wire Wire Line
	5450 1050 5450 1300
Wire Wire Line
	5450 1550 5200 1550
Wire Wire Line
	5450 1300 5550 1300
Connection ~ 5450 1300
Wire Wire Line
	5450 1300 5450 1550
$Comp
L power:GND #PWR0104
U 1 1 5E825E8D
P 5550 1300
F 0 "#PWR0104" H 5550 1050 50  0001 C CNN
F 1 "GND" H 5555 1127 50  0000 C CNN
F 2 "" H 5550 1300 50  0001 C CNN
F 3 "" H 5550 1300 50  0001 C CNN
	1    5550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2700 5900 2850
Connection ~ 5350 2700
$Comp
L power:GND #PWR0108
U 1 1 5E880A2C
P 5900 2850
F 0 "#PWR0108" H 5900 2600 50  0001 C CNN
F 1 "GND" H 5905 2677 50  0000 C CNN
F 2 "" H 5900 2850 50  0001 C CNN
F 3 "" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2550 5150 2500
Wire Wire Line
	5150 2500 4900 2500
Wire Wire Line
	4900 2500 4900 2650
Wire Wire Line
	4900 2650 4250 2650
Wire Wire Line
	5150 2850 5150 2900
Wire Wire Line
	5150 2900 4900 2900
Wire Wire Line
	4900 2900 4900 2750
Wire Wire Line
	4900 2750 4250 2750
$Comp
L Device:C_Small C5
U 1 1 5E8AA0A3
P 5250 3050
F 0 "C5" V 5450 3050 50  0000 C CNN
F 1 "5pF" V 5350 3050 50  0000 C CNN
F 2 "" H 5250 3050 50  0001 C CNN
F 3 "~" H 5250 3050 50  0001 C CNN
	1    5250 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2700 4950 2700
$Comp
L Device:Crystal_GND24 Y2
U 1 1 5E843969
P 5150 2700
F 0 "Y2" V 5100 3050 50  0000 R CNN
F 1 "XOSC0" V 5000 3200 50  0000 R CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "~" H 5150 2700 50  0001 C CNN
	1    5150 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3050 5150 2900
Connection ~ 5150 2900
$Comp
L Device:C_Small C4
U 1 1 5E8C2D5D
P 5250 2350
F 0 "C4" V 5021 2350 50  0000 C CNN
F 1 "5pF" V 5112 2350 50  0000 C CNN
F 2 "" H 5250 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5250 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2500 5150 2350
Connection ~ 5150 2500
Wire Wire Line
	5350 2700 5900 2700
Wire Wire Line
	5350 2350 5350 2700
Wire Wire Line
	5350 3050 5350 2700
Text GLabel 900  800  0    50   Input ~ 0
g_3v3
Text GLabel 850  950  0    50   Input ~ 0
g_5v
Text Label 1500 800  0    50   ~ 0
3v3
Text Label 1500 950  0    50   ~ 0
5v
Text HLabel 1100 2100 0    50   Input ~ 0
DEBUG_TX
Text HLabel 1100 2250 0    50   Input ~ 0
DEBUG_RX
Text Label 1550 2100 0    50   ~ 0
UART0_TX
Text Label 1550 2250 0    50   ~ 0
UART0_RX
Text HLabel 1350 2400 0    50   Input ~ 0
MASTER_SPI_MOSI
Text HLabel 1350 2550 0    50   Input ~ 0
MASTER_SPI_MISO
Text HLabel 1300 2700 0    50   Input ~ 0
MASTER_SPI_CLK
Text HLabel 1100 2850 0    50   Input ~ 0
~TFT_CS
Text HLabel 1250 3000 0    50   Input ~ 0
~FLASH_MEM_CS
Wire Wire Line
	1350 2400 1550 2400
Wire Wire Line
	1350 2550 1550 2550
Wire Wire Line
	1300 2700 1550 2700
Wire Wire Line
	1100 2850 1550 2850
Wire Wire Line
	1250 3000 1550 3000
Text HLabel 1350 3150 0    50   Input ~ 0
~IO_EXPANDER_CS
Wire Wire Line
	1350 3150 1550 3150
Wire Wire Line
	1100 2100 1550 2100
Wire Wire Line
	1100 2250 1550 2250
Wire Wire Line
	900  800  1500 800 
Wire Wire Line
	850  950  1500 950 
Text Notes 600  700  0    50   ~ 0
Power Interface
Wire Notes Line
	550  600  1700 600 
Text Notes 650  1950 0    50   ~ 0
Brain Interface
Wire Notes Line
	2350 1850 550  1850
Text Label 1550 2400 0    50   ~ 0
SPI0_MOSI
Text Label 1550 2550 0    50   ~ 0
SPI0_MISO
Text Label 1550 2700 0    50   ~ 0
SPI0_CLK
Text Label 1550 2850 0    50   ~ 0
SPI0_CS0
Text Label 1550 3000 0    50   ~ 0
SPI0_CS1
Text Label 1550 3150 0    50   ~ 0
SPI0_CS2
Text Label 7550 1250 0    50   ~ 0
VBAT
Wire Wire Line
	800  1150 1500 1150
Text Label 800  1150 2    50   ~ 0
3v3
Text Label 1500 1150 0    50   ~ 0
VBAT
Wire Wire Line
	7500 1250 7550 1250
Text HLabel 1100 3600 0    50   Input ~ 0
~TFT_WR
Text HLabel 1100 3700 0    50   Input ~ 0
~TFT_RD
Text HLabel 1100 3800 0    50   Input ~ 0
TFT_RSDC
Wire Wire Line
	1100 3600 1550 3600
Wire Wire Line
	1100 3700 1550 3700
Wire Wire Line
	1100 3800 1550 3800
Text Label 1550 3700 0    50   ~ 0
~TFT_RD
Text Label 1550 3800 0    50   ~ 0
TFT_RSDC
Text HLabel 1100 3900 0    50   Input ~ 0
~TFT_RST
Wire Wire Line
	1100 3900 1550 3900
Text Label 1550 3900 0    50   ~ 0
~TFT_RST
Wire Wire Line
	4250 1850 4350 1850
Wire Wire Line
	4250 1750 4350 1750
Wire Wire Line
	4250 1650 4350 1650
Text Label 4350 1750 0    50   ~ 0
SPI0_CLK
Text Label 4350 1850 0    50   ~ 0
SPI0_MISO
Text Label 4350 1650 0    50   ~ 0
SPI0_MISO
Wire Wire Line
	7500 3350 7600 3350
Wire Wire Line
	7500 3450 7600 3450
Text Label 7600 3450 0    50   ~ 0
UART0_TX
Text Label 7600 3350 0    50   ~ 0
UART0_RX
Text Notes 6350 3450 0    50   ~ 0
SERCOM2 (USART)
Wire Notes Line
	6300 3500 7300 3500
Wire Notes Line
	7300 3500 7300 3300
Wire Notes Line
	6300 3300 7300 3300
Wire Notes Line
	6300 3300 6300 3500
Wire Notes Line
	4050 1600 3200 1600
Wire Notes Line
	3200 1600 3200 1900
Wire Notes Line
	3200 1900 4050 1900
Wire Notes Line
	4050 1900 4050 1600
Text Notes 3200 1800 0    50   ~ 0
SERCOM2 (SPI)
Wire Wire Line
	4250 2850 4350 2850
Wire Wire Line
	4250 2950 4350 2950
Text Label 4350 2850 0    50   ~ 0
I2C0_SDA
Text Label 4350 2950 0    50   ~ 0
I2C0_SCL
Text Notes 3200 2950 0    50   ~ 0
SERCOM1 (I2C)
Wire Notes Line
	4050 2800 3200 2800
Wire Notes Line
	3200 2800 3200 3000
Wire Notes Line
	3200 3000 4050 3000
Wire Notes Line
	4050 3000 4050 2800
Wire Wire Line
	4900 5400 5000 5400
Text HLabel 1000 1250 0    50   Input ~ 0
~SYS_RST
Wire Notes Line
	550  1300 1700 1300
Wire Notes Line
	1700 600  1700 1300
Wire Notes Line
	550  600  550  1300
Text Label 1250 1250 0    50   ~ 0
~BRAIN_RST
Wire Wire Line
	1000 1250 1250 1250
Wire Wire Line
	4900 5600 5000 5600
Text Label 5000 5600 0    50   ~ 0
SWCLK
Wire Wire Line
	4900 5700 5000 5700
Text Label 5000 5700 0    50   ~ 0
SWDIO
Text Label 5000 5800 0    50   ~ 0
SWO
Wire Wire Line
	4900 5800 5000 5800
Wire Wire Line
	4300 6300 4400 6300
NoConn ~ 4900 5900
Text Label 5000 5400 0    50   ~ 0
~SWRST
Wire Wire Line
	4400 6300 4400 6350
Connection ~ 4400 6300
$Comp
L power:GND #PWR0119
U 1 1 5EA9AF4B
P 4400 6350
F 0 "#PWR0119" H 4400 6100 50  0001 C CNN
F 1 "GND" H 4405 6177 50  0000 C CNN
F 2 "" H 4400 6350 50  0001 C CNN
F 3 "" H 4400 6350 50  0001 C CNN
	1    4400 6350
	1    0    0    -1  
$EndComp
Text Label 1550 3600 0    50   ~ 0
~TFT_WR
Text Label 1900 5050 0    50   ~ 0
I2C0_SCL
Text Label 1900 4600 0    50   ~ 0
I2C0_SDA
Text HLabel 1300 5050 0    50   Input ~ 0
MASTER_I2C_SCL
Text HLabel 1300 4600 0    50   Input ~ 0
MASTER_I2C_SDA
$Comp
L Device:R_Small R4
U 1 1 5EB11658
P 1450 4450
F 0 "R4" H 1509 4496 50  0000 L CNN
F 1 "4.7k" H 1509 4405 50  0000 L CNN
F 2 "" H 1450 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
	1    1450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4350 1450 4300
Text Label 1450 4300 0    50   ~ 0
3v3
$Comp
L Device:R_Small R5
U 1 1 5EB38D15
P 1450 4900
F 0 "R5" H 1509 4946 50  0000 L CNN
F 1 "4.7k" H 1509 4855 50  0000 L CNN
F 2 "" H 1450 4900 50  0001 C CNN
F 3 "~" H 1450 4900 50  0001 C CNN
	1    1450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5050 1450 5050
Wire Wire Line
	1300 4600 1450 4600
Wire Wire Line
	1450 4600 1450 4550
Connection ~ 1450 4600
Wire Wire Line
	1450 4600 1900 4600
Wire Wire Line
	1450 5050 1450 5000
Connection ~ 1450 5050
Wire Wire Line
	1450 4800 1450 4750
Text Label 1450 4750 0    50   ~ 0
3v3
Wire Wire Line
	1450 5050 1900 5050
Text Label 850  7150 2    50   ~ 0
~SWRST
Wire Wire Line
	850  7150 1250 7150
Text Label 1250 7150 0    50   ~ 0
~BRAIN_RST
Text Notes 600  7000 0    50   ~ 0
Locals
Text HLabel 1050 5200 0    50   Input ~ 0
EXT_IRQ_0
Text HLabel 1050 5300 0    50   Input ~ 0
EXT_IRQ_1
Text HLabel 1050 5400 0    50   Input ~ 0
EXT_IRQ_2
Text HLabel 1050 5500 0    50   Input ~ 0
EXT_IRQ_3
Text HLabel 1050 5600 0    50   Input ~ 0
EXT_IRQ_4
Text HLabel 1050 5700 0    50   Input ~ 0
EXT_IRQ_5
Wire Wire Line
	1050 5200 1300 5200
Text Label 1300 5200 0    50   ~ 0
EXT_IRQ_0
Wire Wire Line
	1050 5300 1300 5300
Text Label 1300 5300 0    50   ~ 0
EXT_IRQ_1
Wire Wire Line
	1050 5400 1300 5400
Text Label 1300 5400 0    50   ~ 0
EXT_IRQ_2
Wire Wire Line
	1050 5500 1300 5500
Text Label 1300 5500 0    50   ~ 0
EXT_IRQ_3
Wire Wire Line
	1050 5600 1300 5600
Text Label 1300 5600 0    50   ~ 0
EXT_IRQ_4
Wire Wire Line
	1050 5700 1300 5700
Text Label 1300 5700 0    50   ~ 0
EXT_IRQ_5
Text Label 7700 950  0    50   ~ 0
EXT_IRQ_0
Wire Wire Line
	7500 950  7700 950 
Text Label 7700 1050 0    50   ~ 0
EXT_IRQ_1
Wire Wire Line
	7500 1050 7700 1050
Text Label 7700 1150 0    50   ~ 0
EXT_IRQ_2
Wire Wire Line
	7500 1150 7700 1150
Wire Wire Line
	7500 1450 7700 1450
Text Label 7700 1450 0    50   ~ 0
EXT_IRQ_4
Wire Wire Line
	7500 1350 7700 1350
Text Label 7700 1350 0    50   ~ 0
EXT_IRQ_3
Wire Wire Line
	7500 1550 7700 1550
Text Label 7700 1550 0    50   ~ 0
EXT_IRQ_5
Wire Notes Line
	2350 5750 550  5750
Wire Notes Line
	550  1850 550  5750
Wire Notes Line
	2350 1850 2350 5750
$EndSCHEMATC
