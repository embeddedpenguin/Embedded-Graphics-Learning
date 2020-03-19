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
L Conn_02x20_LCD_INTF:Conn_02x20_Odd_Even_LCD_INTF J?
U 1 1 5E858ED6
P 4500 2350
F 0 "J?" H 4500 3475 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even_LCD_INTF" H 4500 3384 50  0000 C CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "file:///home/penguin/Downloads/SSD1963_v1.6.pdf" H 4100 2350 50  0001 C CNN
	1    4500 2350
	1    0    0    -1  
$EndComp
Text GLabel 900  650  0    50   Input ~ 0
g_3v3
Text GLabel 850  850  0    50   Input ~ 0
g_5v
Wire Wire Line
	900  650  1150 650 
Text Label 1150 650  0    50   ~ 0
3v3
Wire Wire Line
	850  850  1150 850 
Text Label 1150 850  0    50   ~ 0
5v
Wire Wire Line
	2500 1750 2550 1750
Text Label 2800 1200 0    50   ~ 0
3v3
$Comp
L Device:R_Small R?
U 1 1 5E889CF7
P 850 1950
F 0 "R?" V 654 1950 50  0000 C CNN
F 1 "39k" V 745 1950 50  0000 C CNN
F 2 "" H 850 1950 50  0001 C CNN
F 3 "~" H 850 1950 50  0001 C CNN
	1    850  1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1950 950  1950
Wire Wire Line
	750  1950 750  2150
$Comp
L power:GND #PWR?
U 1 1 5E88D5B3
P 750 2150
F 0 "#PWR?" H 750 1900 50  0001 C CNN
F 1 "GND" H 755 1977 50  0000 C CNN
F 2 "" H 750 2150 50  0001 C CNN
F 3 "" H 750 2150 50  0001 C CNN
	1    750  2150
	1    0    0    -1  
$EndComp
Entry Wire Line
	900  2350 1000 2450
Wire Wire Line
	1000 2450 1100 2450
Wire Wire Line
	2500 3950 2500 4050
$Comp
L power:GND #PWR?
U 1 1 5E89C68E
P 2500 4100
F 0 "#PWR?" H 2500 3850 50  0001 C CNN
F 1 "GND" H 2505 3927 50  0000 C CNN
F 2 "" H 2500 4100 50  0001 C CNN
F 3 "" H 2500 4100 50  0001 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
Entry Wire Line
	900  2450 1000 2550
Entry Wire Line
	900  2550 1000 2650
Entry Wire Line
	900  2650 1000 2750
Entry Wire Line
	900  2750 1000 2850
Entry Wire Line
	900  2850 1000 2950
Entry Wire Line
	900  2950 1000 3050
Entry Wire Line
	900  3050 1000 3150
Entry Wire Line
	900  3150 1000 3250
Entry Wire Line
	900  3250 1000 3350
Entry Wire Line
	900  3350 1000 3450
Entry Wire Line
	900  3450 1000 3550
Entry Wire Line
	900  3550 1000 3650
Entry Wire Line
	900  3650 1000 3750
Entry Wire Line
	2800 2350 2700 2450
Entry Wire Line
	2800 2450 2700 2550
Entry Wire Line
	2800 2550 2700 2650
Entry Wire Line
	2800 2650 2700 2750
Entry Wire Line
	2800 2750 2700 2850
Entry Wire Line
	2800 2850 2700 2950
Entry Wire Line
	2800 2950 2700 3050
Entry Wire Line
	2800 3050 2700 3150
Entry Wire Line
	2800 3150 2700 3250
Entry Wire Line
	2800 3250 2700 3350
Wire Wire Line
	1000 2550 1100 2550
Wire Wire Line
	1000 2650 1100 2650
Wire Wire Line
	1000 2750 1100 2750
Wire Wire Line
	1000 2850 1100 2850
Wire Wire Line
	1000 2950 1100 2950
Wire Wire Line
	1000 3050 1100 3050
Wire Wire Line
	1000 3150 1100 3150
Wire Wire Line
	1000 3250 1100 3250
Wire Wire Line
	1000 3350 1100 3350
Wire Wire Line
	1000 3450 1100 3450
Wire Wire Line
	1000 3550 1100 3550
Wire Wire Line
	1000 3650 1100 3650
Wire Wire Line
	1000 3750 1100 3750
Text Label 1000 2450 0    50   ~ 0
D0
Text Label 1000 2550 0    50   ~ 0
D1
Text Label 1000 2650 0    50   ~ 0
D2
Text Label 1000 2750 0    50   ~ 0
D3
Text Label 1000 2850 0    50   ~ 0
D4
Text Label 1000 2950 0    50   ~ 0
D5
Text Label 1000 3050 0    50   ~ 0
D6
Text Label 1000 3150 0    50   ~ 0
D7
Text Label 1000 3250 0    50   ~ 0
D8
Text Label 1000 3350 0    50   ~ 0
D9
Text Label 1000 3450 0    50   ~ 0
D10
Text Label 1000 3550 0    50   ~ 0
D11
Text Label 1000 3650 0    50   ~ 0
D12
Text Label 1000 3750 0    50   ~ 0
D13
Text Label 2500 2450 0    50   ~ 0
D14
Text Label 2500 2550 0    50   ~ 0
D15
Text Label 2500 2650 0    50   ~ 0
D16
Text Label 2500 2750 0    50   ~ 0
D17
Text Label 2500 2850 0    50   ~ 0
D18
Text Label 2500 2950 0    50   ~ 0
D19
Text Label 2500 3050 0    50   ~ 0
D20
Text Label 2500 3150 0    50   ~ 0
D21
Text Label 2500 3250 0    50   ~ 0
D22
Text Label 2500 3350 0    50   ~ 0
D23
Text Notes 5600 1300 0    50   ~ 0
LCD INTF -- LCD Interface Section\n - D[0-23] represent data pins on the 8080 (parallel) bus\n - The MAX7301 is an IO expander acting as the data bus middleman\n    between the brain and the ssd1963\n - The lcd control pins will still be controlled directly from the brain to alleviate timing issues and \n    because its just going to be easier to debug\n - The MAX7301 is going to be run at something around 20MHz so we should be ok with timing
Wire Notes Line
	5550 800  9600 800 
Wire Notes Line
	9600 800  9600 2250
Wire Notes Line
	9600 2250 5550 2250
Wire Notes Line
	5550 2250 5550 800 
Entry Wire Line
	3650 1950 3750 2050
Entry Wire Line
	3650 2050 3750 2150
Entry Wire Line
	3650 2150 3750 2250
Entry Wire Line
	3650 2250 3750 2350
Entry Wire Line
	3650 2350 3750 2450
Entry Wire Line
	3650 2450 3750 2550
Entry Wire Line
	3650 2550 3750 2650
Entry Wire Line
	3650 2650 3750 2750
Entry Wire Line
	3650 2750 3750 2850
Entry Wire Line
	3650 2850 3750 2950
Entry Wire Line
	3650 2950 3750 3050
Entry Wire Line
	3650 3050 3750 3150
Wire Bus Line
	3650 3900 5500 3900
Wire Bus Line
	5500 3900 5500 1450
Wire Wire Line
	3750 2050 3900 2050
Wire Wire Line
	3750 2150 3900 2150
Wire Wire Line
	3750 2250 3900 2250
Wire Wire Line
	3750 2350 3900 2350
Wire Wire Line
	3750 2450 3900 2450
Wire Wire Line
	3750 2550 3900 2550
Wire Wire Line
	3750 2650 3900 2650
Wire Wire Line
	3750 2750 3900 2750
Wire Wire Line
	3750 2850 3900 2850
Wire Wire Line
	3750 2950 3900 2950
Wire Wire Line
	3750 3050 3900 3050
Wire Wire Line
	3750 3150 3900 3150
Wire Wire Line
	2500 2450 2700 2450
Wire Wire Line
	2500 2550 2700 2550
Wire Wire Line
	2500 2650 2700 2650
Wire Wire Line
	2500 2750 2700 2750
Wire Wire Line
	2500 2850 2700 2850
Wire Wire Line
	2500 2950 2700 2950
Wire Wire Line
	2500 3050 2700 3050
Wire Wire Line
	2500 3150 2700 3150
Wire Wire Line
	2500 3250 2700 3250
Wire Wire Line
	2500 3350 2700 3350
Wire Bus Line
	900  4500 2800 4500
NoConn ~ 2500 3450
NoConn ~ 2500 3550
NoConn ~ 2500 3650
NoConn ~ 2500 3750
Wire Bus Line
	3250 1800 3650 1800
Entry Bus Bus
	3150 1900 3250 1800
Wire Bus Line
	3150 1900 3150 2300
Wire Bus Line
	3150 2300 2800 2300
Text Notes 2100 1100 0    50   ~ 0
this looks atrocious but idk how to make busses vertical ,,,
$Comp
L MAX7301AAX_:MAX7301AAX+ U?
U 1 1 5E86D6D7
P 1800 2950
F 0 "U?" H 1800 4420 50  0000 C CNN
F 1 "MAX7301AAX+" H 1800 4329 50  0000 C CNN
F 2 "SOP80P1030X264-36N" H 1800 2950 50  0001 L BNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7301.pdf" H 1800 2950 50  0001 L BNN
F 4 "None" H 1800 2950 50  0001 L BNN "Field4"
F 5 "Interface IC - I/O extensions Maxim Integrated MAX7301AAX+ SPI 26 MHz SSOP 36" H 1800 2950 50  0001 L BNN "Field5"
F 6 "SSOP-36 Maxim" H 1800 2950 50  0001 L BNN "Field6"
F 7 "Unavailable" H 1800 2950 50  0001 L BNN "Field7"
F 8 "MAX7301AAX+" H 1800 2950 50  0001 L BNN "Field8"
	1    1800 2950
	1    0    0    -1  
$EndComp
Connection ~ 2500 4050
Wire Wire Line
	2500 4050 2500 4100
$Comp
L Device:C_Small C?
U 1 1 5E988E9B
P 2800 1450
F 0 "C?" H 2892 1496 50  0000 L CNN
F 1 "C_Small" H 2892 1405 50  0000 L CNN
F 2 "" H 2800 1450 50  0001 C CNN
F 3 "~" H 2800 1450 50  0001 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1200 2800 1350
Wire Wire Line
	2800 1350 2550 1350
Connection ~ 2800 1350
Wire Wire Line
	2800 1550 2800 1650
$Comp
L power:GND #PWR?
U 1 1 5E98EDCE
P 2800 1650
F 0 "#PWR?" H 2800 1400 50  0001 C CNN
F 1 "GND" H 2805 1477 50  0000 C CNN
F 2 "" H 2800 1650 50  0001 C CNN
F 3 "" H 2800 1650 50  0001 C CNN
	1    2800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1350 2550 1750
Wire Bus Line
	2800 2300 2800 4500
Wire Bus Line
	900  2350 900  4500
Wire Bus Line
	3650 1800 3650 3900
$EndSCHEMATC
