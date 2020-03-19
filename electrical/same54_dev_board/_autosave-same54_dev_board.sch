EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Project Oracle"
Date "2020-03-16"
Rev "v0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5300 850  3000 2000
U 5E7872D3
F0 "s_Power" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 700  2450 3750 2550
U 5E7C0F59
F0 "s_USB_INTF.sch" 50
F1 "USB_INTF.sch" 50
$EndSheet
$Sheet
S 750  800  1750 1300
U 5E805E4F
F0 "s_BRAIN" 50
F1 "BRAIN.sch" 50
$EndSheet
Text Notes 800  1000 0    50   ~ 0
Brain -- ATSAME54P20A will controll peripherals, including an IO extender which,\n will handler the control of the screen (mikroe board with SSD1963)
Text GLabel 900  6250 0    50   Input ~ 0
g_3v3
Text GLabel 1800 6250 0    50   Input ~ 0
g_5v
$Sheet
S 5250 3550 3100 2000
U 5E8589A7
F0 "g_SCREEN_INTF" 50
F1 "SCREEN_INTF.sch" 50
$EndSheet
Wire Wire Line
	900  6250 950  6250
$Comp
L power:+3V3 #PWR?
U 1 1 5E97BC15
P 1200 6250
F 0 "#PWR?" H 1200 6100 50  0001 C CNN
F 1 "+3V3" H 1215 6423 50  0000 C CNN
F 2 "" H 1200 6250 50  0001 C CNN
F 3 "" H 1200 6250 50  0001 C CNN
	1    1200 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E97C21D
P 2150 6250
F 0 "#PWR?" H 2150 6100 50  0001 C CNN
F 1 "+5V" H 2165 6423 50  0000 C CNN
F 2 "" H 2150 6250 50  0001 C CNN
F 3 "" H 2150 6250 50  0001 C CNN
	1    2150 6250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E97C674
P 950 5850
F 0 "#FLG?" H 950 5925 50  0001 C CNN
F 1 "PWR_FLAG" H 950 6023 50  0000 C CNN
F 2 "" H 950 5850 50  0001 C CNN
F 3 "~" H 950 5850 50  0001 C CNN
	1    950  5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6250 950  5850
Connection ~ 950  6250
Wire Wire Line
	950  6250 1200 6250
$Comp
L power:GND #PWR?
U 1 1 5E97DBEE
P 2600 6250
F 0 "#PWR?" H 2600 6000 50  0001 C CNN
F 1 "GND" H 2605 6077 50  0000 C CNN
F 2 "" H 2600 6250 50  0001 C CNN
F 3 "" H 2600 6250 50  0001 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6250 1900 6250
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E97F87F
P 1900 5850
F 0 "#FLG?" H 1900 5925 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 6023 50  0000 C CNN
F 2 "" H 1900 5850 50  0001 C CNN
F 3 "~" H 1900 5850 50  0001 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6250 1900 5850
Connection ~ 1900 6250
Wire Wire Line
	1900 6250 2150 6250
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E980A5B
P 2600 5850
F 0 "#FLG?" H 2600 5925 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 6023 50  0000 C CNN
F 2 "" H 2600 5850 50  0001 C CNN
F 3 "~" H 2600 5850 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6250 2600 5850
$EndSCHEMATC
