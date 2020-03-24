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
$Comp
L p_ATSAME54P20A-AU:p_ATSAME54P20A-AU U1
U 5 1 5E84F3B3
P 4800 3300
F 0 "U1" H 4800 4215 50  0000 C CNN
F 1 "p_ATSAME54P20A-AU" H 4800 4124 50  0000 C CNN
F 2 "penguin:QFP40P1600X1600X120-128N_ATSAME54P20A" H 3600 4550 50  0001 C CNN
F 3 "" H 3600 4550 50  0001 C CNN
	5    4800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2650 5800 2750
Connection ~ 5800 2750
Wire Wire Line
	5800 2750 5800 2850
Connection ~ 5800 2850
Wire Wire Line
	5800 2850 5800 2950
Connection ~ 5800 2950
Wire Wire Line
	5800 2950 5800 3050
Connection ~ 5800 3050
Wire Wire Line
	5800 3050 5800 3150
Connection ~ 5800 3150
Wire Wire Line
	5800 3150 5800 3250
Connection ~ 5800 3250
Wire Wire Line
	5800 3250 5800 3350
Connection ~ 5800 3350
Wire Wire Line
	5800 3350 5800 3450
Connection ~ 5800 3450
Wire Wire Line
	5800 3450 5800 3550
Wire Wire Line
	5800 3800 5800 3900
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
	3800 3600 3800 3700
Connection ~ 3800 3700
Wire Wire Line
	3800 3700 3800 3800
Connection ~ 3800 3800
Wire Wire Line
	3800 3800 3800 3900
Connection ~ 3800 3900
Wire Wire Line
	3800 3900 3800 4000
Connection ~ 3800 4000
Wire Wire Line
	3800 4000 3800 4100
Connection ~ 3800 4100
Wire Wire Line
	3800 4100 3800 4200
Connection ~ 3800 4200
Wire Wire Line
	3800 4200 3800 4300
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 5E88DD8C
P 950 1500
F 0 "J?" H 1007 1817 50  0000 C CNN
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
L power:GND #PWR?
U 1 1 5E8980B4
P 1350 1600
F 0 "#PWR?" H 1350 1350 50  0001 C CNN
F 1 "GND" H 1355 1427 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0001 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
