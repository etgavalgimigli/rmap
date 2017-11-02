EESchema Schematic File Version 3
LIBS:rfm95
LIBS:microduino
LIBS:power
LIBS:Connector
LIBS:rfcom
LIBS:contrib
LIBS:microduino_lora-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Microduino Lora shield"
Date ""
Rev "1.0"
Comp "raspibo.org"
Comment1 "Released under MIT License(MIT)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Microduino U1
U 1 1 59F8DF1A
P 4100 3000
F 0 "U1" H 4000 3447 60  0000 C CNN
F 1 "Microduino" H 4000 3341 60  0000 C CNN
F 2 "Rmap:microduino" H 4100 3000 60  0001 C CNN
F 3 "" H 4100 3000 60  0000 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59F8E0DF
P 3100 2800
F 0 "#PWR01" H 3100 2550 50  0001 C CNN
F 1 "GND" V 3105 2672 50  0000 R CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 59F8E103
P 7000 4000
F 0 "#PWR02" H 7000 3750 50  0001 C CNN
F 1 "GND" H 7005 3827 50  0000 C CNN
F 2 "" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR03
U 1 1 59F8E1A7
P 4900 2900
F 0 "#PWR03" H 4900 2750 50  0001 C CNN
F 1 "+3V3" V 4915 3028 50  0000 L CNN
F 2 "" H 4900 2900 50  0001 C CNN
F 3 "" H 4900 2900 50  0001 C CNN
	1    4900 2900
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 59F8E1DF
P 7000 2550
F 0 "#PWR04" H 7000 2400 50  0001 C CNN
F 1 "+3V3" H 7015 2723 50  0000 C CNN
F 2 "" H 7000 2550 50  0001 C CNN
F 3 "" H 7000 2550 50  0001 C CNN
	1    7000 2550
	1    0    0    -1  
$EndComp
NoConn ~ 3300 3000
NoConn ~ 3300 3100
NoConn ~ 3300 3200
NoConn ~ 3300 3300
NoConn ~ 3300 3400
NoConn ~ 3300 3500
NoConn ~ 3300 3600
NoConn ~ 3600 4000
NoConn ~ 3700 4000
NoConn ~ 3800 4000
NoConn ~ 3900 4000
NoConn ~ 4000 4000
NoConn ~ 4100 4000
NoConn ~ 4200 4000
NoConn ~ 4300 4000
NoConn ~ 4400 4000
NoConn ~ 4700 3200
NoConn ~ 4700 3100
NoConn ~ 4700 3000
NoConn ~ 4700 2800
$Comp
L RFM95W-915S2 U2
U 1 1 59F8E4FB
P 7000 3200
F 0 "U2" H 6800 3700 50  0000 C CNN
F 1 "RFM95W-915S2" H 7500 2600 50  0000 C CNN
F 2 "RF_Modules:Hopref_RFM9XW_SMD" H 3700 4850 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 3700 4850 50  0001 C CNN
	1    7000 3200
	1    0    0    -1  
$EndComp
NoConn ~ 7500 3600
NoConn ~ 7500 3500
NoConn ~ 7500 3400
NoConn ~ 7500 3300
NoConn ~ 7500 3200
NoConn ~ 7500 3100
$Comp
L Conn_Coaxial J1
U 1 1 59F8E8C0
P 8000 2900
F 0 "J1" H 8099 2876 50  0000 L CNN
F 1 "Conn_Coaxial" H 8099 2785 50  0000 L CNN
F 2 "lib:SMA_EDGE" H 8000 2900 50  0001 C CNN
F 3 "" H 8000 2900 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59F8E964
P 8000 3250
F 0 "#PWR05" H 8000 3000 50  0001 C CNN
F 1 "GND" H 8005 3077 50  0000 C CNN
F 2 "" H 8000 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3300 2800
Wire Wire Line
	4900 2900 4700 2900
Wire Wire Line
	6100 3100 6500 3100
Wire Wire Line
	6100 3000 6500 3000
Wire Wire Line
	6100 2900 6500 2900
Wire Wire Line
	6100 3200 6500 3200
Wire Wire Line
	6100 3400 6500 3400
Wire Wire Line
	7000 4000 7000 3800
Wire Wire Line
	6900 3800 6900 3900
Wire Wire Line
	6900 3900 7100 3900
Connection ~ 7000 3900
Wire Wire Line
	7100 3900 7100 3800
Wire Wire Line
	7000 2550 7000 2700
Wire Wire Line
	7850 2900 7500 2900
Wire Wire Line
	8000 3250 8000 3100
Text GLabel 6100 2900 0    60   Input ~ 0
SCK
Text GLabel 6100 3000 0    60   Input ~ 0
MOSI
Text GLabel 6100 3100 0    60   Input ~ 0
MISO
Text GLabel 6100 3200 0    60   Input ~ 0
NSS
Text GLabel 6100 3400 0    60   Input ~ 0
RST
Text GLabel 3050 2900 0    60   Input ~ 0
RST
Wire Wire Line
	3300 2900 3050 2900
Text GLabel 4950 3600 2    60   Input ~ 0
SCK
Text GLabel 4950 3500 2    60   Input ~ 0
MISO
Text GLabel 4950 3400 2    60   Input ~ 0
MOSI
Text GLabel 4950 3300 2    60   Input ~ 0
NSS
Wire Wire Line
	4950 3300 4700 3300
Wire Wire Line
	4700 3400 4950 3400
Wire Wire Line
	4950 3500 4700 3500
Wire Wire Line
	4700 3600 4950 3600
$EndSCHEMATC
