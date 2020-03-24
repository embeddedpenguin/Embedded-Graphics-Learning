EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L Connector:USB_B_Micro J1
U 1 1 5E8480AD
P 6050 1300
F 0 "J1" H 6107 1767 50  0000 C CNN
F 1 "USB_B_Micro" H 6107 1676 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 6200 1250 50  0001 C CNN
F 3 "~" H 6200 1250 50  0001 C CNN
	1    6050 1300
	1    0    0    -1  
$EndComp
$Comp
L dk_Interface-Controllers:FT232RQ-REEL U2
U 1 1 5E84744C
P 7700 2500
F 0 "U2" H 8000 1100 60  0000 C CNN
F 1 "FT232RQ-REEL" H 8300 1200 60  0000 C CNN
F 2 "digikey-footprints:QFN-32-1EP_5x5mm" H 7900 2700 60  0001 L CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 7900 2800 60  0001 L CNN
F 4 "768-1008-1-ND" H 7900 2900 60  0001 L CNN "Digi-Key_PN"
F 5 "FT232RQ-REEL" H 7900 3000 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 7900 3100 60  0001 L CNN "Category"
F 7 "Interface - Controllers" H 7900 3200 60  0001 L CNN "Family"
F 8 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 7900 3300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/ftdi-future-technology-devices-international-ltd/FT232RQ-REEL/768-1008-1-ND/1836403" H 7900 3400 60  0001 L CNN "DK_Detail_Page"
F 10 "IC USB FS SERIAL UART 32-QFN" H 7900 3500 60  0001 L CNN "Description"
F 11 "FTDI, Future Technology Devices International Ltd" H 7900 3600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7900 3700 60  0001 L CNN "Status"
	1    7700 2500
	1    0    0    -1  
$EndComp
Text Notes 650  700  0    50   ~ 0
Power Interface
Wire Wire Line
	6350 1300 6400 1300
Text Label 6400 1300 0    50   ~ 0
USB_D+
Wire Wire Line
	6350 1400 6400 1400
Text Label 6400 1400 0    50   ~ 0
USB_D-
Wire Wire Line
	7000 3400 6900 3400
Wire Wire Line
	7000 3500 6900 3500
Text Label 6900 3400 2    50   ~ 0
USB_D+
Text Label 6900 3500 2    50   ~ 0
USB_D-
Wire Wire Line
	8000 3000 8100 3000
Text Label 8100 3000 0    50   ~ 0
FTDI_TX
Wire Wire Line
	7000 2600 6900 2600
Text Label 6900 2600 2    50   ~ 0
FTDI_RX
Wire Wire Line
	7400 4200 7500 4200
Connection ~ 7500 4200
Wire Wire Line
	7500 4200 7600 4200
Wire Wire Line
	7500 4200 7500 4300
$Comp
L power:GND #PWR0110
U 1 1 5E7B73F2
P 7500 4300
F 0 "#PWR0110" H 7500 4050 50  0001 C CNN
F 1 "GND" H 7505 4127 50  0000 C CNN
F 2 "" H 7500 4300 50  0001 C CNN
F 3 "" H 7500 4300 50  0001 C CNN
	1    7500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1700 6050 1700
Wire Wire Line
	6050 1700 6050 1800
Connection ~ 6050 1700
$Comp
L power:GND #PWR0111
U 1 1 5E7BED3A
P 6050 1800
F 0 "#PWR0111" H 6050 1550 50  0001 C CNN
F 1 "GND" H 6055 1627 50  0000 C CNN
F 2 "" H 6050 1800 50  0001 C CNN
F 3 "" H 6050 1800 50  0001 C CNN
	1    6050 1800
	1    0    0    -1  
$EndComp
NoConn ~ 6350 1500
Wire Notes Line
	600  600  2000 600 
Text Label 1350 1950 0    50   ~ 0
FTDI_TX
Wire Wire Line
	1100 1950 1350 1950
Text HLabel 1100 1950 0    50   Input ~ 0
DEBUG_RX
Text Label 1350 1850 0    50   ~ 0
FTDI_RX
Wire Wire Line
	1100 1850 1350 1850
Text HLabel 1100 1850 0    50   Input ~ 0
DEBUG_TX
Text Notes 700  1750 0    50   ~ 0
USB Interface
Wire Notes Line
	2000 1650 600  1650
Wire Notes Line
	600  600  600  1650
Wire Wire Line
	7500 2300 7500 2400
Wire Wire Line
	8000 2800 8500 2800
$Comp
L Device:C_Small C6
U 1 1 5E7E8395
P 8500 2900
F 0 "C6" H 8592 2946 50  0000 L CNN
F 1 "100nF" H 8592 2855 50  0000 L CNN
F 2 "" H 8500 2900 50  0001 C CNN
F 3 "~" H 8500 2900 50  0001 C CNN
	1    8500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3000 8500 3100
$Comp
L power:GND #PWR0112
U 1 1 5E7E91F3
P 8500 3100
F 0 "#PWR0112" H 8500 2850 50  0001 C CNN
F 1 "GND" H 8505 2927 50  0000 C CNN
F 2 "" H 8500 3100 50  0001 C CNN
F 3 "" H 8500 3100 50  0001 C CNN
	1    8500 3100
	1    0    0    -1  
$EndComp
NoConn ~ 8000 3100
NoConn ~ 8000 3200
Wire Wire Line
	8500 2800 8850 2800
Connection ~ 8500 2800
Text Label 8850 2800 0    50   ~ 0
FTDI_3v3
Text Label 7500 2300 2    50   ~ 0
FTDI_3v3
Wire Wire Line
	7000 3100 6900 3100
Text Label 6900 3100 2    50   ~ 0
FTDI_3v3
Wire Wire Line
	7600 4200 7700 4200
Connection ~ 7600 4200
Wire Wire Line
	7000 3900 6900 3900
Wire Wire Line
	6900 3900 6900 4200
Wire Wire Line
	6900 4200 7400 4200
Connection ~ 7400 4200
Wire Wire Line
	7700 4200 7800 4200
Connection ~ 7700 4200
$Comp
L Device:C_Small C?
U 1 1 5E7F85B7
P 6800 1200
F 0 "C?" H 6892 1246 50  0000 L CNN
F 1 "10nF" H 6892 1155 50  0000 L CNN
F 2 "" H 6800 1200 50  0001 C CNN
F 3 "~" H 6800 1200 50  0001 C CNN
	1    6800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1100 6800 1100
Wire Wire Line
	6800 1300 6800 1700
Wire Wire Line
	6800 1700 6050 1700
Wire Wire Line
	6800 1100 7050 1100
Connection ~ 6800 1100
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5E7FB1E4
P 7150 1100
F 0 "FB?" V 6913 1100 50  0000 C CNN
F 1 "40_Ohm" V 7004 1100 50  0000 C CNN
F 2 "" V 7080 1100 50  0001 C CNN
F 3 "~" H 7150 1100 50  0001 C CNN
	1    7150 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1100 7600 2400
Wire Wire Line
	7250 1100 7600 1100
Wire Wire Line
	7600 1100 8050 1100
Connection ~ 7600 1100
$Comp
L Device:C_Small C?
U 1 1 5E8424CD
P 8050 1200
F 0 "C?" H 8142 1246 50  0000 L CNN
F 1 "4.7uF" H 8142 1155 50  0000 L CNN
F 2 "" H 8050 1200 50  0001 C CNN
F 3 "~" H 8050 1200 50  0001 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E844B56
P 8550 1200
F 0 "C?" H 8642 1246 50  0000 L CNN
F 1 "100nF" H 8642 1155 50  0000 L CNN
F 2 "" H 8550 1200 50  0001 C CNN
F 3 "~" H 8550 1200 50  0001 C CNN
	1    8550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1100 8550 1100
Connection ~ 8050 1100
Wire Wire Line
	8050 1300 8300 1300
Wire Wire Line
	8300 1300 8300 1400
Connection ~ 8300 1300
Wire Wire Line
	8300 1300 8550 1300
$Comp
L power:GND #PWR?
U 1 1 5E849ABD
P 8300 1400
F 0 "#PWR?" H 8300 1150 50  0001 C CNN
F 1 "GND" H 8305 1227 50  0000 C CNN
F 2 "" H 8300 1400 50  0001 C CNN
F 3 "" H 8300 1400 50  0001 C CNN
	1    8300 1400
	1    0    0    -1  
$EndComp
Text Label 8950 1100 0    50   ~ 0
FTDI_5V
Wire Wire Line
	8550 1100 8950 1100
Connection ~ 8550 1100
Wire Wire Line
	1050 800  1550 800 
Text Label 1550 800  0    50   ~ 0
FTDI_5V
Text HLabel 1050 800  0    50   Input ~ 0
FTDI_5V
Text Label 1550 950  0    50   ~ 0
FTDI_3v3
Wire Wire Line
	1050 950  1550 950 
Wire Notes Line
	2000 600  2000 1650
Text HLabel 1050 950  0    50   Input ~ 0
FTDI_3V3
$EndSCHEMATC
