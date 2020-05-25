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
$Comp
L Conn_02x20_LCD_INTF:Conn_02x20_Odd_Even_LCD_INTF J2
U 1 1 5ECBC0A7
P 5800 3850
F 0 "J2" H 5800 4975 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even_LCD_INTF" H 5800 4884 50  0000 C CNN
F 2 "breakout_board_2x20:idc_breakout" H 5400 3850 50  0001 C CNN
F 3 "" H 5400 3850 50  0001 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5ECC32EF
P 2450 3900
F 0 "J1" H 2500 5017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2500 4926 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 2450 3900 50  0001 C CNN
F 3 "~" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3000 2000 3000
Wire Wire Line
	2250 3100 2000 3100
Wire Wire Line
	2250 3200 2000 3200
Wire Wire Line
	2250 3300 2000 3300
Wire Wire Line
	2250 3400 2000 3400
Wire Wire Line
	2250 3500 2000 3500
Wire Wire Line
	2250 3600 2000 3600
Wire Wire Line
	2250 3700 2000 3700
Wire Wire Line
	2250 3800 2000 3800
Wire Wire Line
	2250 3900 2000 3900
Wire Wire Line
	2250 4000 2000 4000
Wire Wire Line
	2250 4100 2000 4100
Wire Wire Line
	2250 4200 2000 4200
Wire Wire Line
	2250 4300 2000 4300
Wire Wire Line
	2250 4400 2000 4400
Wire Wire Line
	2250 4500 2000 4500
Wire Wire Line
	2250 4600 2000 4600
Wire Wire Line
	2250 4700 2000 4700
Wire Wire Line
	2250 4800 2000 4800
Wire Wire Line
	2250 4900 2000 4900
Wire Wire Line
	2750 4900 3000 4900
Wire Wire Line
	2750 4800 3000 4800
Wire Wire Line
	2750 4700 3000 4700
Wire Wire Line
	2750 4600 3000 4600
Wire Wire Line
	2750 4500 3000 4500
Wire Wire Line
	2750 4400 3000 4400
Wire Wire Line
	2750 4300 3000 4300
Wire Wire Line
	2750 4200 3000 4200
Wire Wire Line
	2750 4100 3000 4100
Wire Wire Line
	2750 4000 3000 4000
Wire Wire Line
	2750 3900 3000 3900
Wire Wire Line
	2750 3800 3000 3800
Wire Wire Line
	2750 3700 3000 3700
Wire Wire Line
	2750 3600 3000 3600
Wire Wire Line
	2750 3500 3000 3500
Wire Wire Line
	2750 3400 3000 3400
Wire Wire Line
	2750 3300 3000 3300
Wire Wire Line
	2750 3200 3000 3200
Wire Wire Line
	2750 3100 3000 3100
Wire Wire Line
	2750 3000 3000 3000
Text Label 2000 3000 2    50   ~ 0
Vcc
Text Label 2000 3100 2    50   ~ 0
CPT_SCL
Text Label 2000 3200 2    50   ~ 0
CPT_INT
Text Label 2000 3300 2    50   ~ 0
~TFT_RST
Text Label 2000 3400 2    50   ~ 0
~TFT_CS
Text Label 2000 3500 2    50   ~ 0
~TFT_RD
Text Label 2000 3600 2    50   ~ 0
TFT_D0
Text Label 2000 3700 2    50   ~ 0
TFT_D2
Text Label 2000 3800 2    50   ~ 0
TFT_D4
Text Label 2000 3900 2    50   ~ 0
TFT_D6
Text Label 2000 4000 2    50   ~ 0
TFT_D8
Text Label 2000 4100 2    50   ~ 0
TFT_D10
Text Label 2000 4200 2    50   ~ 0
TFT_D12
Text Label 2000 4300 2    50   ~ 0
TFT_D14
Text Label 2000 4400 2    50   ~ 0
TFT_D16
Text Label 2000 4500 2    50   ~ 0
TFT_D18
Text Label 2000 4600 2    50   ~ 0
TFT_D20
Text Label 2000 4700 2    50   ~ 0
TFT_D22
Text Label 2000 4800 2    50   ~ 0
TFT_STB
Text Label 2000 4900 2    50   ~ 0
CPT_WK
Text Label 3000 4900 0    50   ~ 0
NC1
Text Label 3000 4800 0    50   ~ 0
NC2
Text Label 3000 4700 0    50   ~ 0
TFT_D23
Text Label 3000 4600 0    50   ~ 0
TFT_D21
Text Label 3000 4500 0    50   ~ 0
TFT_D19
Text Label 3000 4400 0    50   ~ 0
TFT_D17
Text Label 3000 4300 0    50   ~ 0
TFT_D15
Text Label 3000 4200 0    50   ~ 0
TFT_D13
Text Label 3000 4100 0    50   ~ 0
TFT_D11
Text Label 3000 4000 0    50   ~ 0
TFT_D9
Text Label 3000 3900 0    50   ~ 0
TFT_D7
Text Label 3000 3800 0    50   ~ 0
TFT_D5
Text Label 3000 3700 0    50   ~ 0
TFT_D3
Text Label 3000 3600 0    50   ~ 0
TFT_D1
Text Label 3000 3500 0    50   ~ 0
TFT_TE
Text Label 3000 3400 0    50   ~ 0
~TFT_WR
Text Label 3000 3300 0    50   ~ 0
TFT_DC
Text Label 3000 3200 0    50   ~ 0
TFT_GPO
Text Label 3000 3100 0    50   ~ 0
CPT_SDA
Text Label 3000 3000 0    50   ~ 0
GND
Wire Wire Line
	5200 2950 4950 2950
Wire Wire Line
	5200 3050 4950 3050
Wire Wire Line
	5200 3150 4950 3150
Wire Wire Line
	5200 3250 4950 3250
Wire Wire Line
	5200 3350 4950 3350
Wire Wire Line
	5200 3450 4950 3450
Wire Wire Line
	5200 3550 4950 3550
Wire Wire Line
	5200 3650 4950 3650
Wire Wire Line
	5200 3750 4950 3750
Wire Wire Line
	5200 3850 4950 3850
Wire Wire Line
	5200 3950 4950 3950
Wire Wire Line
	5200 4050 4950 4050
Wire Wire Line
	5200 4150 4950 4150
Wire Wire Line
	5200 4250 4950 4250
Wire Wire Line
	5200 4350 4950 4350
Wire Wire Line
	5200 4450 4950 4450
Wire Wire Line
	5200 4550 4950 4550
Wire Wire Line
	5200 4650 4950 4650
Wire Wire Line
	5200 4750 4950 4750
Wire Wire Line
	5200 4850 4950 4850
Text Label 4950 2950 2    50   ~ 0
Vcc
Text Label 4950 3050 2    50   ~ 0
CPT_SCL
Text Label 4950 3150 2    50   ~ 0
CPT_INT
Text Label 4950 3250 2    50   ~ 0
~TFT_RST
Text Label 4950 3350 2    50   ~ 0
~TFT_CS
Text Label 4950 3450 2    50   ~ 0
~TFT_RD
Text Label 4950 3550 2    50   ~ 0
TFT_D0
Text Label 4950 3650 2    50   ~ 0
TFT_D2
Text Label 4950 3750 2    50   ~ 0
TFT_D4
Text Label 4950 3850 2    50   ~ 0
TFT_D6
Text Label 4950 3950 2    50   ~ 0
TFT_D8
Text Label 4950 4050 2    50   ~ 0
TFT_D10
Text Label 4950 4150 2    50   ~ 0
TFT_D12
Text Label 4950 4250 2    50   ~ 0
TFT_D14
Text Label 4950 4350 2    50   ~ 0
TFT_D16
Text Label 4950 4450 2    50   ~ 0
TFT_D18
Text Label 4950 4550 2    50   ~ 0
TFT_D20
Text Label 4950 4650 2    50   ~ 0
TFT_D22
Text Label 4950 4750 2    50   ~ 0
TFT_STB
Text Label 4950 4850 2    50   ~ 0
CPT_WK
Wire Wire Line
	6400 4850 6650 4850
Wire Wire Line
	6400 4750 6650 4750
Wire Wire Line
	6400 4650 6650 4650
Wire Wire Line
	6400 4550 6650 4550
Wire Wire Line
	6400 4450 6650 4450
Wire Wire Line
	6400 4350 6650 4350
Wire Wire Line
	6400 4250 6650 4250
Wire Wire Line
	6400 4150 6650 4150
Wire Wire Line
	6400 4050 6650 4050
Wire Wire Line
	6400 3950 6650 3950
Wire Wire Line
	6400 3850 6650 3850
Wire Wire Line
	6400 3750 6650 3750
Wire Wire Line
	6400 3650 6650 3650
Wire Wire Line
	6400 3550 6650 3550
Wire Wire Line
	6400 3450 6650 3450
Wire Wire Line
	6400 3350 6650 3350
Wire Wire Line
	6400 3250 6650 3250
Wire Wire Line
	6400 3150 6650 3150
Wire Wire Line
	6400 3050 6650 3050
Wire Wire Line
	6400 2950 6650 2950
Text Label 6650 4850 0    50   ~ 0
NC1
Text Label 6650 4750 0    50   ~ 0
NC2
Text Label 6650 4650 0    50   ~ 0
TFT_D23
Text Label 6650 4550 0    50   ~ 0
TFT_D21
Text Label 6650 4450 0    50   ~ 0
TFT_D19
Text Label 6650 4350 0    50   ~ 0
TFT_D17
Text Label 6650 4250 0    50   ~ 0
TFT_D15
Text Label 6650 4150 0    50   ~ 0
TFT_D13
Text Label 6650 4050 0    50   ~ 0
TFT_D11
Text Label 6650 3950 0    50   ~ 0
TFT_D9
Text Label 6650 3850 0    50   ~ 0
TFT_D7
Text Label 6650 3750 0    50   ~ 0
TFT_D5
Text Label 6650 3650 0    50   ~ 0
TFT_D3
Text Label 6650 3550 0    50   ~ 0
TFT_D1
Text Label 6650 3450 0    50   ~ 0
TFT_TE
Text Label 6650 3350 0    50   ~ 0
~TFT_WR
Text Label 6650 3250 0    50   ~ 0
TFT_DC
Text Label 6650 3150 0    50   ~ 0
TFT_GPO
Text Label 6650 3050 0    50   ~ 0
CPT_SDA
Text Label 6650 2950 0    50   ~ 0
GND
$EndSCHEMATC
