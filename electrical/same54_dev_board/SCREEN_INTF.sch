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
L Conn_02x20_LCD_INTF:Conn_02x20_Odd_Even_LCD_INTF J3
U 1 1 5E858ED6
P 9900 4050
F 0 "J3" H 9900 5175 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even_LCD_INTF" H 9900 5084 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Horizontal" H 9500 4050 50  0001 C CNN
F 3 "file:///home/penguin/Downloads/SSD1963_v1.6.pdf" H 9500 4050 50  0001 C CNN
	1    9900 4050
	1    0    0    -1  
$EndComp
Text GLabel 900  750  0    50   Input ~ 0
g_3v3
Text GLabel 850  900  0    50   Input ~ 0
g_5v
Wire Wire Line
	900  750  1150 750 
Text Label 1150 750  0    50   ~ 0
3v3
Wire Wire Line
	850  900  1150 900 
Text Label 1150 900  0    50   ~ 0
5v
Wire Wire Line
	7900 3450 7950 3450
Text Label 8200 2750 0    50   ~ 0
3v3
$Comp
L Device:R_Small R1
U 1 1 5E889CF7
P 6250 3650
F 0 "R1" V 6054 3650 50  0000 C CNN
F 1 "39k" V 6145 3650 50  0000 C CNN
F 2 "" H 6250 3650 50  0001 C CNN
F 3 "~" H 6250 3650 50  0001 C CNN
	1    6250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3650 6350 3650
Wire Wire Line
	6150 3650 6150 3850
$Comp
L power:GND #PWR0105
U 1 1 5E88D5B3
P 6150 3850
F 0 "#PWR0105" H 6150 3600 50  0001 C CNN
F 1 "GND" H 6155 3677 50  0000 C CNN
F 2 "" H 6150 3850 50  0001 C CNN
F 3 "" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
Entry Wire Line
	6300 4050 6400 4150
Wire Wire Line
	6400 4150 6500 4150
Wire Wire Line
	7900 5650 7900 5750
$Comp
L power:GND #PWR0106
U 1 1 5E89C68E
P 7900 5800
F 0 "#PWR0106" H 7900 5550 50  0001 C CNN
F 1 "GND" H 7905 5627 50  0000 C CNN
F 2 "" H 7900 5800 50  0001 C CNN
F 3 "" H 7900 5800 50  0001 C CNN
	1    7900 5800
	1    0    0    -1  
$EndComp
Entry Wire Line
	6300 4150 6400 4250
Entry Wire Line
	6300 4250 6400 4350
Entry Wire Line
	6300 4350 6400 4450
Entry Wire Line
	6300 4450 6400 4550
Entry Wire Line
	6300 4550 6400 4650
Entry Wire Line
	6300 4650 6400 4750
Entry Wire Line
	6300 4750 6400 4850
Entry Wire Line
	6300 4850 6400 4950
Entry Wire Line
	6300 4950 6400 5050
Entry Wire Line
	6300 5050 6400 5150
Entry Wire Line
	6300 5150 6400 5250
Entry Wire Line
	6300 5250 6400 5350
Entry Wire Line
	6300 5350 6400 5450
Entry Wire Line
	8200 4050 8100 4150
Entry Wire Line
	8200 4150 8100 4250
Entry Wire Line
	8200 4250 8100 4350
Entry Wire Line
	8200 4350 8100 4450
Entry Wire Line
	8200 4450 8100 4550
Entry Wire Line
	8200 4550 8100 4650
Entry Wire Line
	8200 4650 8100 4750
Entry Wire Line
	8200 4750 8100 4850
Entry Wire Line
	8200 4850 8100 4950
Entry Wire Line
	8200 4950 8100 5050
Wire Wire Line
	6400 4250 6500 4250
Wire Wire Line
	6400 4350 6500 4350
Wire Wire Line
	6400 4450 6500 4450
Wire Wire Line
	6400 4550 6500 4550
Wire Wire Line
	6400 4650 6500 4650
Wire Wire Line
	6400 4750 6500 4750
Wire Wire Line
	6400 4850 6500 4850
Wire Wire Line
	6400 4950 6500 4950
Wire Wire Line
	6400 5050 6500 5050
Wire Wire Line
	6400 5150 6500 5150
Wire Wire Line
	6400 5250 6500 5250
Wire Wire Line
	6400 5350 6500 5350
Wire Wire Line
	6400 5450 6500 5450
Text Label 6400 4150 0    50   ~ 0
D0
Text Label 6400 4250 0    50   ~ 0
D1
Text Label 6400 4350 0    50   ~ 0
D2
Text Label 6400 4450 0    50   ~ 0
D3
Text Label 6400 4550 0    50   ~ 0
D4
Text Label 6400 4650 0    50   ~ 0
D5
Text Label 6400 4750 0    50   ~ 0
D6
Text Label 6400 4850 0    50   ~ 0
D7
Text Label 6400 4950 0    50   ~ 0
D8
Text Label 6400 5050 0    50   ~ 0
D9
Text Label 6400 5150 0    50   ~ 0
D10
Text Label 6400 5250 0    50   ~ 0
D11
Text Label 6400 5350 0    50   ~ 0
D12
Text Label 6400 5450 0    50   ~ 0
D13
Text Label 7900 4150 0    50   ~ 0
D14
Text Label 7900 4250 0    50   ~ 0
D15
Text Label 7900 4350 0    50   ~ 0
D16
Text Label 7900 4450 0    50   ~ 0
D17
Text Label 7900 4550 0    50   ~ 0
D18
Text Label 7900 4650 0    50   ~ 0
D19
Text Label 7900 4750 0    50   ~ 0
D20
Text Label 7900 4850 0    50   ~ 0
D21
Text Label 7900 4950 0    50   ~ 0
D22
Text Label 7900 5050 0    50   ~ 0
D23
Text Notes 7150 1150 0    50   ~ 0
LCD INTF -- LCD Interface Section\n - D[0-23] represent data pins on the 8080 (parallel) bus\n - The MAX7301 is an IO expander acting as the data bus middleman\n    between the brain and the ssd1963\n - The lcd control pins will still be controlled directly from the brain to alleviate timing issues and \n    because its just going to be easier to debug\n - The MAX7301 is going to be run at something around 20MHz so we should be ok with timing
Wire Notes Line
	7100 550  11150 550 
Wire Notes Line
	11150 550  11150 2000
Wire Notes Line
	11150 2000 7100 2000
Wire Notes Line
	7100 2000 7100 550 
Entry Wire Line
	9050 3650 9150 3750
Entry Wire Line
	9050 3750 9150 3850
Entry Wire Line
	9050 3850 9150 3950
Entry Wire Line
	9050 3950 9150 4050
Entry Wire Line
	9050 4050 9150 4150
Entry Wire Line
	9050 4150 9150 4250
Entry Wire Line
	9050 4250 9150 4350
Entry Wire Line
	9050 4350 9150 4450
Entry Wire Line
	9050 4450 9150 4550
Entry Wire Line
	9050 4550 9150 4650
Entry Wire Line
	9050 4650 9150 4750
Entry Wire Line
	9050 4750 9150 4850
Wire Wire Line
	9150 3750 9300 3750
Wire Wire Line
	9150 3850 9300 3850
Wire Wire Line
	9150 3950 9300 3950
Wire Wire Line
	9150 4050 9300 4050
Wire Wire Line
	9150 4150 9300 4150
Wire Wire Line
	9150 4250 9300 4250
Wire Wire Line
	9150 4350 9300 4350
Wire Wire Line
	9150 4450 9300 4450
Wire Wire Line
	9150 4550 9300 4550
Wire Wire Line
	9150 4650 9300 4650
Wire Wire Line
	9150 4750 9300 4750
Wire Wire Line
	9150 4850 9300 4850
Wire Wire Line
	7900 4150 8100 4150
Wire Wire Line
	7900 4250 8100 4250
Wire Wire Line
	7900 4350 8100 4350
Wire Wire Line
	7900 4450 8100 4450
Wire Wire Line
	7900 4550 8100 4550
Wire Wire Line
	7900 4650 8100 4650
Wire Wire Line
	7900 4750 8100 4750
Wire Wire Line
	7900 4850 8100 4850
Wire Wire Line
	7900 4950 8100 4950
Wire Wire Line
	7900 5050 8100 5050
Wire Bus Line
	6300 6200 8200 6200
NoConn ~ 7900 5150
NoConn ~ 7900 5250
NoConn ~ 7900 5350
NoConn ~ 7900 5450
Text Notes 7500 2650 0    50   ~ 0
this looks atrocious but idk how to make busses vertical ,,,
$Comp
L MAX7301AAX_:MAX7301AAX+ U3
U 1 1 5E86D6D7
P 7200 4650
F 0 "U3" H 7200 6120 50  0000 C CNN
F 1 "MAX7301AAX+" H 7200 6029 50  0000 C CNN
F 2 "proj_modules:SOP80P1030X264-36N" H 7200 4650 50  0001 L BNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7301.pdf" H 7200 4650 50  0001 L BNN
F 4 "None" H 7200 4650 50  0001 L BNN "Field4"
F 5 "Interface IC - I/O extensions Maxim Integrated MAX7301AAX+ SPI 26 MHz SSOP 36" H 7200 4650 50  0001 L BNN "Field5"
F 6 "SSOP-36 Maxim" H 7200 4650 50  0001 L BNN "Field6"
F 7 "Unavailable" H 7200 4650 50  0001 L BNN "Field7"
F 8 "MAX7301AAX+" H 7200 4650 50  0001 L BNN "Field8"
	1    7200 4650
	1    0    0    -1  
$EndComp
Connection ~ 7900 5750
Wire Wire Line
	7900 5750 7900 5800
$Comp
L Device:C_Small C3
U 1 1 5E988E9B
P 8200 3000
F 0 "C3" H 8292 3046 50  0000 L CNN
F 1 "C_Small" H 8292 2955 50  0000 L CNN
F 2 "" H 8200 3000 50  0001 C CNN
F 3 "~" H 8200 3000 50  0001 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2750 8200 2900
Wire Wire Line
	8200 2900 7950 2900
Connection ~ 8200 2900
Wire Wire Line
	8200 3100 8200 3200
$Comp
L power:GND #PWR0107
U 1 1 5E98EDCE
P 8200 3200
F 0 "#PWR0107" H 8200 2950 50  0001 C CNN
F 1 "GND" H 8205 3027 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	10800 3750 10900 3650
Entry Wire Line
	10800 3850 10900 3750
Entry Wire Line
	10800 3950 10900 3850
Entry Wire Line
	10800 4050 10900 3950
Entry Wire Line
	10800 4150 10900 4050
Entry Wire Line
	10800 4250 10900 4150
Entry Wire Line
	10800 4350 10900 4250
Entry Wire Line
	10800 4450 10900 4350
Entry Wire Line
	10800 4550 10900 4450
Entry Wire Line
	10800 4650 10900 4550
Entry Wire Line
	10800 4750 10900 4650
Entry Wire Line
	10800 4850 10900 4750
Wire Wire Line
	10500 3750 10800 3750
Wire Wire Line
	10500 3850 10800 3850
Wire Wire Line
	10500 3950 10800 3950
Wire Wire Line
	10500 4050 10800 4050
Wire Wire Line
	10500 4150 10800 4150
Wire Wire Line
	10500 4250 10800 4250
Wire Wire Line
	10500 4350 10800 4350
Wire Wire Line
	10500 4450 10800 4450
Wire Wire Line
	10500 4550 10800 4550
Wire Wire Line
	10500 4650 10800 4650
Wire Wire Line
	10500 4750 10800 4750
Wire Wire Line
	10500 4850 10800 4850
Text Label 9150 3750 0    50   ~ 0
D0
Text Label 9150 3850 0    50   ~ 0
D2
Text Label 9150 3950 0    50   ~ 0
D4
Text Label 9150 4050 0    50   ~ 0
D6
Text Label 9150 4150 0    50   ~ 0
D8
Text Label 9150 4250 0    50   ~ 0
D10
Text Label 9150 4350 0    50   ~ 0
D12
Text Label 9150 4450 0    50   ~ 0
D14
Text Label 9150 4550 0    50   ~ 0
D16
Text Label 9150 4650 0    50   ~ 0
D18
Text Label 9150 4750 0    50   ~ 0
D20
Text Label 9150 4850 0    50   ~ 0
D22
Text Label 10550 3750 0    50   ~ 0
D1
Text Label 10550 3850 0    50   ~ 0
D3
Text Label 10550 3950 0    50   ~ 0
D5
Text Label 10550 4050 0    50   ~ 0
D7
Text Label 10550 4150 0    50   ~ 0
D9
Text Label 10550 4250 0    50   ~ 0
D11
Text Label 10550 4350 0    50   ~ 0
D13
Text Label 10550 4450 0    50   ~ 0
D15
Text Label 10550 4550 0    50   ~ 0
D17
Text Label 10550 4650 0    50   ~ 0
D19
Text Label 10550 4750 0    50   ~ 0
D21
Text Label 10550 4850 0    50   ~ 0
D23
Text Notes 650  650  0    50   ~ 0
Power Interface
Wire Wire Line
	9300 3150 9250 3150
Text Label 9250 3150 2    50   ~ 0
3v3
Text HLabel 1350 1450 0    50   Input ~ 0
MASTER_SPI_CLK
Text HLabel 1350 1550 0    50   Input ~ 0
MASTER_SPI_MISO
Text HLabel 1350 1650 0    50   Input ~ 0
MASTER_SPI_MOSI
Text HLabel 1350 1750 0    50   Input ~ 0
~IO_EXPANDER_CS
Text HLabel 1350 1900 0    50   Input ~ 0
~TFT_CS
Text HLabel 1350 2000 0    50   Input ~ 0
~TFT_RD
Text HLabel 1350 2100 0    50   Input ~ 0
~TFT_WR
Text HLabel 1350 2200 0    50   Input ~ 0
TFT_RSDC
Text HLabel 1350 2300 0    50   Input ~ 0
~TFT_RST
Text HLabel 1350 2400 0    50   Input ~ 0
TFT_STB
Text HLabel 1350 2650 0    50   Input ~ 0
TFT_TOUCH_SDA
Text HLabel 1350 2750 0    50   Input ~ 0
TFT_TOUCH_SCL
Text HLabel 1350 2850 0    50   Input ~ 0
TFT_TOUCH_INT
Entry Bus Bus
	8450 4050 8550 3950
Wire Wire Line
	9300 3650 9250 3650
Wire Wire Line
	1350 1450 1600 1450
Text Label 1600 1450 0    50   ~ 0
IO_EXP_CLK
Text Label 1600 1550 0    50   ~ 0
IO_EXP_DOUT
Wire Wire Line
	1600 1550 1350 1550
Wire Wire Line
	1350 1650 1600 1650
Text Label 1600 1650 0    50   ~ 0
IO_EXP_DIN
Wire Wire Line
	1350 1750 1600 1750
Text Label 1600 1750 0    50   ~ 0
~IO_EXP_CS
Wire Wire Line
	1350 1900 1600 1900
Text Label 1600 1900 0    50   ~ 0
~TFT_CS
Text Label 1600 2000 0    50   ~ 0
~TFT_RD
Wire Wire Line
	1600 2000 1350 2000
Wire Wire Line
	1350 2100 1600 2100
Text Label 1600 2100 0    50   ~ 0
~TFT_WR
Text Label 1600 2200 0    50   ~ 0
TFT_RSDC
Wire Wire Line
	1600 2200 1350 2200
Wire Wire Line
	1350 2300 1600 2300
Text Label 1600 2300 0    50   ~ 0
~TFT_RST
Text Label 1600 2400 0    50   ~ 0
TFT_STB
Wire Wire Line
	1600 2400 1350 2400
Text Label 1600 2650 0    50   ~ 0
TFT_TOUCH_SDA
Wire Wire Line
	1600 2650 1350 2650
Wire Wire Line
	1350 2750 1600 2750
Text Label 1600 2750 0    50   ~ 0
TFT_TOUCH_SCL
Text Label 1600 2850 0    50   ~ 0
TFT_TOUCH_INT
Wire Wire Line
	1600 2850 1350 2850
Wire Wire Line
	7900 3650 8000 3650
Text Label 8000 3650 0    50   ~ 0
~IO_EXP_CS
Wire Wire Line
	7950 2900 7950 3450
Wire Wire Line
	7900 3750 8000 3750
Text Label 8000 3750 0    50   ~ 0
IO_EXP_CLK
Wire Wire Line
	7900 3850 8000 3850
Text Label 8000 3850 0    50   ~ 0
IO_EXP_DIN
Wire Wire Line
	7900 3950 8000 3950
Text Label 8000 3950 0    50   ~ 0
IO_EXP_DOUT
Wire Wire Line
	10500 3550 10600 3550
Text Label 10600 3550 0    50   ~ 0
~TFT_WR
Text HLabel 1350 2500 0    50   Input ~ 0
TFT_TE
Wire Wire Line
	1350 2500 1600 2500
Text Label 1600 2500 0    50   ~ 0
TFT_TE
Wire Wire Line
	10500 3450 10600 3450
NoConn ~ 10500 3350
Wire Wire Line
	10500 3250 10600 3250
Text Label 10600 3250 0    50   ~ 0
TFT_TOUCH_SDA
Wire Wire Line
	10500 3150 10600 3150
Wire Wire Line
	10600 3150 10600 2500
Wire Wire Line
	10600 2500 10850 2500
Wire Wire Line
	10850 2500 10850 2650
$Comp
L power:GND #PWR0109
U 1 1 5EC6B772
P 10850 2650
F 0 "#PWR0109" H 10850 2400 50  0001 C CNN
F 1 "GND" H 10855 2477 50  0000 C CNN
F 2 "" H 10850 2650 50  0001 C CNN
F 3 "" H 10850 2650 50  0001 C CNN
	1    10850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3250 9250 3250
Text Label 9250 3250 2    50   ~ 0
TFT_TOUCH_SCL
Text Label 9250 3350 2    50   ~ 0
TFT_TOUCH_INT
Wire Wire Line
	9250 3350 9300 3350
Text Label 9250 3450 2    50   ~ 0
~TFT_RST
Wire Wire Line
	9300 3450 9250 3450
Wire Wire Line
	9300 3550 9250 3550
Text Label 9250 3550 2    50   ~ 0
~TFT_CS
Text Label 10600 3450 0    50   ~ 0
TFT_RSDC
Text Label 10600 3650 0    50   ~ 0
TFT_TE
Wire Wire Line
	10500 3650 10600 3650
Text Label 9250 3650 2    50   ~ 0
~TFT_RD
Wire Wire Line
	9300 4950 9200 4950
Text Label 9200 4950 2    50   ~ 0
TFT_STB
Wire Bus Line
	8850 5600 8850 4850
Wire Bus Line
	8850 5600 10900 5600
Entry Bus Bus
	8850 4850 8950 4750
Wire Bus Line
	8950 4750 9050 4750
Wire Bus Line
	8550 3950 8600 3950
Entry Bus Bus
	8600 3950 8700 3850
Wire Bus Line
	8700 3850 8750 3850
Entry Bus Bus
	8750 3850 8850 3750
Wire Bus Line
	8850 3750 8900 3750
Wire Bus Line
	9000 3650 9050 3650
Wire Bus Line
	8200 4050 8450 4050
Entry Bus Bus
	8900 3750 9000 3650
Wire Notes Line
	550  550  1350 550 
Wire Notes Line
	1350 550  1350 1200
Wire Notes Line
	1350 1200 550  1200
Wire Notes Line
	550  1200 550  550 
Wire Notes Line
	550  1250 550  3000
Wire Notes Line
	550  3000 2200 3000
Wire Notes Line
	2200 3000 2200 1250
Wire Notes Line
	2200 1250 550  1250
Wire Bus Line
	9050 3650 9050 4750
Wire Bus Line
	8200 4050 8200 6200
Wire Bus Line
	6300 4050 6300 6200
Wire Bus Line
	10900 3650 10900 5600
Text Notes 650  1350 0    50   ~ 0
LCD Interface
$EndSCHEMATC
