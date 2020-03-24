EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5950 4350 5950 4450
Connection ~ 5950 4450
Wire Wire Line
	5950 4450 5950 4550
Connection ~ 5950 4550
Wire Wire Line
	5950 4550 5950 4650
Connection ~ 5950 4650
Wire Wire Line
	5950 4650 5950 4750
Connection ~ 5950 4750
Wire Wire Line
	5950 4750 5950 4850
Connection ~ 5950 4850
Wire Wire Line
	5950 4850 5950 4950
Connection ~ 5950 4950
Wire Wire Line
	5950 4950 5950 5050
Connection ~ 5950 5050
Wire Wire Line
	5950 5050 5950 5150
Connection ~ 5950 5150
Wire Wire Line
	5950 5150 5950 5250
Wire Wire Line
	5950 5500 5950 5600
Text HLabel 950  900  0    50   Input ~ 0
USB_3v3
Text HLabel 950  1050 0    50   Input ~ 0
USB_5v
Text GLabel 950  600  0    50   Input ~ 0
g_3v3
Text GLabel 950  750  0    50   Input ~ 0
g_5v
Wire Wire Line
	950  900  1350 900 
Text Label 1350 900  0    50   ~ 0
USB_3v3
Wire Wire Line
	950  1050 1350 1050
Text Label 1350 1050 0    50   ~ 0
USB_5v
Wire Wire Line
	950  600  1350 600 
Wire Wire Line
	950  750  1350 750 
Text Label 1350 600  0    50   ~ 0
3v3Out
Text Label 1350 750  0    50   ~ 0
5vOut
Wire Wire Line
	3950 5300 3950 5400
Connection ~ 3950 5400
Wire Wire Line
	3950 5400 3950 5500
Connection ~ 3950 5500
Wire Wire Line
	3950 5500 3950 5600
Connection ~ 3950 5600
Wire Wire Line
	3950 5600 3950 5700
Connection ~ 3950 5700
Wire Wire Line
	3950 5700 3950 5800
Connection ~ 3950 5800
Wire Wire Line
	3950 5800 3950 5900
Connection ~ 3950 5900
Wire Wire Line
	3950 5900 3950 6000
$Comp
L Connector:Barrel_Jack_Switch J4
U 1 1 5E88DD8C
P 950 1500
F 0 "J4" H 1007 1817 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1007 1726 50  0000 C CNN
F 2 "" H 1000 1460 50  0001 C CNN
F 3 "~" H 1000 1460 50  0001 C CNN
	1    950  1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1400 1350 1400
Text Label 1350 1400 0    50   ~ 0
Wall_5V
NoConn ~ 1250 1500
Wire Wire Line
	1250 1600 1350 1600
$Comp
L power:GND #PWR0113
U 1 1 5E8980B4
P 1350 1600
F 0 "#PWR0113" H 1350 1350 50  0001 C CNN
F 1 "GND" H 1355 1427 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0001 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 5 1 5E84F3B3
P 4950 5000
F 0 "U1" H 4950 5915 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 4950 5824 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 3750 6250 50  0001 C CNN
F 3 "" H 3750 6250 50  0001 C CNN
	5    4950 5000
	1    0    0    -1  
$EndComp
Text Notes 3300 2350 0    50   ~ 0
These are dummy loads!!!
Wire Wire Line
	4500 1800 3950 1800
$Comp
L Device:R_Small R2
U 1 1 5E8D1249
P 3950 1900
F 0 "R2" H 4009 1946 50  0000 L CNN
F 1 "100k" H 4009 1855 50  0000 L CNN
F 2 "" H 3950 1900 50  0001 C CNN
F 3 "~" H 3950 1900 50  0001 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E8D1C92
P 3950 2600
F 0 "R3" H 4009 2646 50  0000 L CNN
F 1 "100k" H 4009 2555 50  0000 L CNN
F 2 "" H 3950 2600 50  0001 C CNN
F 3 "~" H 3950 2600 50  0001 C CNN
	1    3950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2000 3950 2050
$Comp
L power:GND #PWR0114
U 1 1 5E8D3DAD
P 3950 2050
F 0 "#PWR0114" H 3950 1800 50  0001 C CNN
F 1 "GND" H 3955 1877 50  0000 C CNN
F 2 "" H 3950 2050 50  0001 C CNN
F 3 "" H 3950 2050 50  0001 C CNN
	1    3950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2700 3950 2750
$Comp
L power:GND #PWR0115
U 1 1 5E8D4B47
P 3950 2750
F 0 "#PWR0115" H 3950 2500 50  0001 C CNN
F 1 "GND" H 3955 2577 50  0000 C CNN
F 2 "" H 3950 2750 50  0001 C CNN
F 3 "" H 3950 2750 50  0001 C CNN
	1    3950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1800 3550 1800
Connection ~ 3950 1800
Text Label 3550 1800 2    50   ~ 0
USB_5v
Wire Wire Line
	3950 2500 3550 2500
Connection ~ 3950 2500
Text Label 3550 2500 2    50   ~ 0
USB_3v3
Wire Wire Line
	4900 2500 5800 2500
Wire Wire Line
	4500 2500 4350 2500
Wire Wire Line
	4900 1800 5350 1800
$Comp
L NCP349MNAETBG:NCP349MNAETBG U4
U 1 1 5E7F2428
P 8100 2250
F 0 "U4" H 8100 2665 50  0000 C CNN
F 1 "NCP349MNAETBG" H 8100 2574 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.65mm_EP1x1.6mm" H 8100 2250 50  0001 C CNN
F 3 "" H 8100 2250 50  0001 C CNN
	1    8100 2250
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6402TRPBF Q1
U 1 1 5E9B8E9E
P 4700 1800
F 0 "Q1" V 4950 1800 60  0000 C CNN
F 1 "Default PFET_A" V 4850 1800 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 4900 2000 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4900 2100 60  0001 L CNN
F 4 "IRLML6402PBFCT-ND" H 4900 2200 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6402TRPBF" H 4900 2300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4900 2400 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4900 2500 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4900 2600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6402TRPBF/IRLML6402PBFCT-ND/812500" H 4900 2700 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 3.7A SOT-23" H 4900 2800 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4900 2900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4900 3000 60  0001 L CNN "Status"
	1    4700 1800
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6402TRPBF Q3
U 1 1 5E9CBFD6
P 6000 1800
F 0 "Q3" V 6250 1800 60  0000 C CNN
F 1 "Default PFET_B" V 6150 1800 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 6200 2000 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6200 2100 60  0001 L CNN
F 4 "IRLML6402PBFCT-ND" H 6200 2200 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6402TRPBF" H 6200 2300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 2400 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6200 2500 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6200 2600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6402TRPBF/IRLML6402PBFCT-ND/812500" H 6200 2700 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 3.7A SOT-23" H 6200 2800 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6200 2900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 3000 60  0001 L CNN "Status"
	1    6000 1800
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6402TRPBF Q2
U 1 1 5E9D56A5
P 4700 2500
F 0 "Q2" V 4950 2500 60  0000 C CNN
F 1 "Alt PFET_A" V 4850 2500 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 4900 2700 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4900 2800 60  0001 L CNN
F 4 "IRLML6402PBFCT-ND" H 4900 2900 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6402TRPBF" H 4900 3000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4900 3100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4900 3200 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4900 3300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6402TRPBF/IRLML6402PBFCT-ND/812500" H 4900 3400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 3.7A SOT-23" H 4900 3500 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4900 3600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4900 3700 60  0001 L CNN "Status"
	1    4700 2500
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6402TRPBF Q4
U 1 1 5E9DB598
P 6000 2500
F 0 "Q4" V 6250 2500 60  0000 C CNN
F 1 "Alt PFET_B" V 6150 2500 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 6200 2700 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6200 2800 60  0001 L CNN
F 4 "IRLML6402PBFCT-ND" H 6200 2900 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6402TRPBF" H 6200 3000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 3100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6200 3200 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6200 3300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6402TRPBF/IRLML6402PBFCT-ND/812500" H 6200 3400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 3.7A SOT-23" H 6200 3500 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6200 3600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 3700 60  0001 L CNN "Status"
	1    6000 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2800 5350 2800
Wire Wire Line
	4600 2100 6100 2100
Wire Wire Line
	4600 2100 4350 2100
Wire Wire Line
	4350 2100 4350 2500
Connection ~ 4600 2100
Connection ~ 4350 2500
Wire Wire Line
	4350 2500 3950 2500
Wire Wire Line
	5350 1800 5350 2800
Connection ~ 5350 1800
Wire Wire Line
	5350 1800 5800 1800
Connection ~ 5350 2800
Wire Wire Line
	5350 2800 6100 2800
Wire Wire Line
	5350 2800 5350 2900
$Comp
L Device:R_Small R6
U 1 1 5E9E8F6F
P 5350 3000
F 0 "R6" H 5409 3046 50  0000 L CNN
F 1 "R_Small" H 5409 2955 50  0000 L CNN
F 2 "" H 5350 3000 50  0001 C CNN
F 3 "~" H 5350 3000 50  0001 C CNN
	1    5350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3100 5350 3150
$Comp
L power:GND #PWR0117
U 1 1 5E9EA130
P 5350 3150
F 0 "#PWR0117" H 5350 2900 50  0001 C CNN
F 1 "GND" H 5355 2977 50  0000 C CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1800 6550 1800
Wire Wire Line
	6550 2500 6200 2500
Wire Wire Line
	6550 1800 6550 2100
Connection ~ 6550 2100
Wire Wire Line
	6550 2100 6550 2500
$Comp
L Device:C_Small C10
U 1 1 5E9F5727
P 7050 2200
F 0 "C10" H 7250 2250 50  0000 R CNN
F 1 "100nF" H 7350 2150 50  0000 R CNN
F 2 "" H 7050 2200 50  0001 C CNN
F 3 "~" H 7050 2200 50  0001 C CNN
	1    7050 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 2100 7050 2100
Wire Wire Line
	7050 2100 7200 2100
Connection ~ 7050 2100
$Comp
L Device:C_Small C11
U 1 1 5E9F9ED9
P 7200 2200
F 0 "C11" H 7292 2246 50  0000 L CNN
F 1 "1uF" H 7292 2155 50  0000 L CNN
F 2 "" H 7200 2200 50  0001 C CNN
F 3 "~" H 7200 2200 50  0001 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
Connection ~ 7200 2100
Wire Wire Line
	7200 2100 7700 2100
Wire Wire Line
	7700 2200 7700 2300
Wire Wire Line
	7700 2300 7700 2400
Connection ~ 7700 2300
$Comp
L power:GND #PWR0118
U 1 1 5EA05C9E
P 7700 2400
F 0 "#PWR0118" H 7700 2150 50  0001 C CNN
F 1 "GND" H 7705 2227 50  0000 C CNN
F 2 "" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0001 C CNN
	1    7700 2400
	1    0    0    -1  
$EndComp
NoConn ~ 8500 2100
Wire Wire Line
	8500 2200 8500 2300
Wire Wire Line
	8500 2200 8650 2200
Connection ~ 8500 2200
Wire Wire Line
	7050 2300 7200 2300
Wire Wire Line
	7200 2300 7700 2300
Connection ~ 7200 2300
$EndSCHEMATC
