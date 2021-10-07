EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 20
Title "Index Mobo"
Date "2021-09-20"
Rev "003"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x03_Male J15
U 1 1 5EB29D05
P 4100 4150
F 0 "J15" H 4050 4050 50  0000 R CNN
F 1 "JST-XH 01x03" H 4050 4150 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4100 4150 50  0001 C CNN
F 3 "" H 4100 4150 50  0001 C CNN
F 4 "C2316" H 4100 4150 50  0001 C CNN "LCSC"
F 5 "C2316" H 4100 4150 50  0001 C CNN "JLCPCB"
F 6 "455-2248-ND" H 4100 4150 50  0001 C CNN "Digikey"
F 7 "Servo 1" H 3900 4250 50  0000 C CNN "Notes"
	1    4100 4150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J16
U 1 1 5EB2CB6A
P 4100 4600
F 0 "J16" H 4050 4500 50  0000 R CNN
F 1 "JST-XH 01x03" H 4050 4600 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
F 4 "C2316" H 4100 4600 50  0001 C CNN "LCSC"
F 5 "C2316" H 4100 4600 50  0001 C CNN "JLCPCB"
F 6 "455-2248-ND" H 4100 4600 50  0001 C CNN "Digikey"
F 7 "Servo 2" H 3900 4700 50  0000 C CNN "Notes"
	1    4100 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 5EC0D2BF
P 4100 3000
F 0 "J13" H 4000 2900 50  0000 R CNN
F 1 "JST-XH 01x03" H 4050 3000 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4100 3000 50  0001 C CNN
F 3 "" H 4100 3000 50  0001 C CNN
F 4 "C2316" H 4100 3000 50  0001 C CNN "LCSC"
F 5 "C2316" H 4100 3000 50  0001 C CNN "JLCPCB"
F 6 "455-2248-ND" H 4100 3000 50  0001 C CNN "Digikey"
F 7 "Top light" H 3850 3100 50  0000 C CNN "Notes"
	1    4100 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J14
U 1 1 5EC201E7
P 4100 3450
F 0 "J14" H 4000 3350 50  0000 R CNN
F 1 "JST-XH 01x03" H 4050 3450 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0001 C CNN
F 4 "C2316" H 4100 3450 50  0001 C CNN "LCSC"
F 5 "C2316" H 4100 3450 50  0001 C CNN "JLCPCB"
F 6 "455-2248-ND" H 4100 3450 50  0001 C CNN "Digikey"
F 7 "Bottom light" H 3800 3550 50  0000 C CNN "Notes"
	1    4100 3450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 5FA33418
P 3850 5550
F 0 "#PWR0185" H 3850 5300 50  0001 C CNN
F 1 "GND" V 3850 5350 50  0000 C CNN
F 2 "" H 3850 5550 50  0001 C CNN
F 3 "" H 3850 5550 50  0001 C CNN
	1    3850 5550
	0    1    1    0   
$EndComp
$Sheet
S 7650 2900 650  200 
U 603A60AC
F0 "Mosfet 1" 50
F1 "Mosfet.sch" 50
F2 "Enable" I L 7650 3000 50 
$EndSheet
Text HLabel 7650 3000 0    50   Input ~ 0
Mosfet_1_EN
Text HLabel 3900 5250 0    50   Input ~ 0
SCL
Text HLabel 3900 5350 0    50   BiDi ~ 0
SDA
Text HLabel 3900 3100 0    50   Input ~ 0
Top_light
Text HLabel 3900 3550 0    50   Input ~ 0
Bottom_light
$Comp
L power:GND #PWR0164
U 1 1 6035E169
P 3850 3350
F 0 "#PWR0164" H 3850 3100 50  0001 C CNN
F 1 "GND" V 3855 3222 50  0000 R CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 60360E32
P 3850 2900
F 0 "#PWR0162" H 3850 2650 50  0001 C CNN
F 1 "GND" V 3855 2772 50  0000 R CNN
F 2 "" H 3850 2900 50  0001 C CNN
F 3 "" H 3850 2900 50  0001 C CNN
	1    3850 2900
	0    1    1    0   
$EndComp
Text HLabel 3900 4250 0    50   Input ~ 0
Servo_1
Text HLabel 3900 4700 0    50   Input ~ 0
Servo_2
$Comp
L power:+3.3V #PWR0186
U 1 1 60393B6A
P 3850 5450
F 0 "#PWR0186" H 3850 5300 50  0001 C CNN
F 1 "+3.3V" V 3850 5550 50  0000 L CNN
F 2 "" H 3850 5450 50  0001 C CNN
F 3 "" H 3850 5450 50  0001 C CNN
	1    3850 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 603A0082
P 3850 4050
F 0 "#PWR0170" H 3850 3800 50  0001 C CNN
F 1 "GND" V 3855 3922 50  0000 R CNN
F 2 "" H 3850 4050 50  0001 C CNN
F 3 "" H 3850 4050 50  0001 C CNN
	1    3850 4050
	0    1    1    0   
$EndComp
$Comp
L power:VDC #PWR0176
U 1 1 604E3FD2
P 5600 3100
F 0 "#PWR0176" H 5600 3000 50  0001 C CNN
F 1 "VDC" V 5600 3200 50  0000 L CNN
F 2 "" H 5600 3100 50  0001 C CNN
F 3 "" H 5600 3100 50  0001 C CNN
	1    5600 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 604E4F19
P 6200 3100
F 0 "#PWR0178" H 6200 2850 50  0001 C CNN
F 1 "GND" V 6200 3000 50  0000 R CNN
F 2 "" H 6200 3100 50  0001 C CNN
F 3 "" H 6200 3100 50  0001 C CNN
	1    6200 3100
	0    -1   -1   0   
$EndComp
Text HLabel 6150 3200 2    50   Input ~ 0
SCL
Text HLabel 6150 3500 2    50   Input ~ 0
COPI
Text HLabel 6150 3400 2    50   Output ~ 0
CIPO
Text HLabel 6150 3600 2    50   Input ~ 0
SCK
Text HLabel 6150 3300 2    50   BiDi ~ 0
SDA
Text HLabel 5650 3500 0    50   BiDi ~ 0
AUX1-A1
Text HLabel 5650 3400 0    50   BiDi ~ 0
AUX1-PWM2
Text HLabel 5650 3300 0    50   BiDi ~ 0
AUX1-PWM1
Text HLabel 5650 3600 0    50   BiDi ~ 0
AUX1-A2
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J18
U 1 1 6063244F
P 5850 3300
F 0 "J18" H 5900 3717 50  0000 C CNN
F 1 "IDC header 02x06" H 5900 3626 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x06_P2.54mm_Vertical" H 5850 3300 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
F 4 "C9136" H 5850 3300 50  0001 C CNN "LCSC"
F 5 "AUX1" H 5900 2900 50  0000 C CNN "Notes"
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR0179
U 1 1 6063C37D
P 5600 4100
F 0 "#PWR0179" H 5600 4000 50  0001 C CNN
F 1 "VDC" V 5615 4227 50  0000 L CNN
F 2 "" H 5600 4100 50  0001 C CNN
F 3 "" H 5600 4100 50  0001 C CNN
	1    5600 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0181
U 1 1 6063C383
P 6200 4100
F 0 "#PWR0181" H 6200 3850 50  0001 C CNN
F 1 "GND" V 6205 3972 50  0000 R CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	0    -1   -1   0   
$EndComp
Text HLabel 6150 4200 2    50   Input ~ 0
SCL
Text HLabel 6150 4500 2    50   Input ~ 0
COPI
Text HLabel 6150 4400 2    50   Output ~ 0
CIPO
Text HLabel 6150 4600 2    50   Input ~ 0
SCK
Text HLabel 6150 4300 2    50   BiDi ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J19
U 1 1 6063C398
P 5850 4300
F 0 "J19" H 5900 4717 50  0000 C CNN
F 1 "IDC header 02x06" H 5900 4626 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x06_P2.54mm_Vertical" H 5850 4300 50  0001 C CNN
F 3 "~" H 5850 4300 50  0001 C CNN
F 4 "C9136" H 5850 4300 50  0001 C CNN "LCSC"
F 5 "AUX2" H 5900 3900 50  0000 C CNN "Notes"
	1    5850 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J20
U 1 1 6068DD3F
P 5850 5300
F 0 "J20" H 5900 5717 50  0000 C CNN
F 1 "IDC header 02x06" H 5900 5626 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x06_P2.54mm_Vertical" H 5850 5300 50  0001 C CNN
F 3 "~" H 5850 5300 50  0001 C CNN
F 4 "C9136" H 5850 5300 50  0001 C CNN "LCSC"
F 5 "AUX3" H 5900 4900 50  0000 C CNN "Notes"
	1    5850 5300
	1    0    0    -1  
$EndComp
Text HLabel 6150 5300 2    50   BiDi ~ 0
SDA
Text HLabel 6150 5600 2    50   Input ~ 0
SCK
Text HLabel 6150 5400 2    50   Output ~ 0
CIPO
Text HLabel 6150 5500 2    50   Input ~ 0
COPI
Text HLabel 6150 5200 2    50   Input ~ 0
SCL
$Comp
L power:GND #PWR0184
U 1 1 6068DD50
P 6200 5100
F 0 "#PWR0184" H 6200 4850 50  0001 C CNN
F 1 "GND" V 6205 4972 50  0000 R CNN
F 2 "" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 50  0001 C CNN
	1    6200 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:VDC #PWR0182
U 1 1 6068DD56
P 5600 5100
F 0 "#PWR0182" H 5600 5000 50  0001 C CNN
F 1 "VDC" V 5600 5200 50  0000 L CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0177
U 1 1 606390BD
P 5600 3200
F 0 "#PWR0177" H 5600 3050 50  0001 C CNN
F 1 "+3.3V" V 5600 3300 50  0000 L CNN
F 2 "" H 5600 3200 50  0001 C CNN
F 3 "" H 5600 3200 50  0001 C CNN
	1    5600 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0180
U 1 1 60639BEB
P 5600 4200
F 0 "#PWR0180" H 5600 4050 50  0001 C CNN
F 1 "+3.3V" V 5600 4300 50  0000 L CNN
F 2 "" H 5600 4200 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5600 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0183
U 1 1 6063A0CF
P 5600 5200
F 0 "#PWR0183" H 5600 5050 50  0001 C CNN
F 1 "+3.3V" V 5615 5328 50  0000 L CNN
F 2 "" H 5600 5200 50  0001 C CNN
F 3 "" H 5600 5200 50  0001 C CNN
	1    5600 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VP #PWR0165
U 1 1 606BF790
P 3850 3450
F 0 "#PWR0165" H 3850 3300 50  0001 C CNN
F 1 "+5VP" V 3865 3578 50  0000 L CNN
F 2 "" H 3850 3450 50  0001 C CNN
F 3 "" H 3850 3450 50  0001 C CNN
	1    3850 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VP #PWR0163
U 1 1 606BFE8D
P 3850 3000
F 0 "#PWR0163" H 3850 2850 50  0001 C CNN
F 1 "+5VP" V 3850 3100 50  0000 L CNN
F 2 "" H 3850 3000 50  0001 C CNN
F 3 "" H 3850 3000 50  0001 C CNN
	1    3850 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 606EB546
P 3850 4500
F 0 "#PWR0172" H 3850 4250 50  0001 C CNN
F 1 "GND" V 3855 4372 50  0000 R CNN
F 2 "" H 3850 4500 50  0001 C CNN
F 3 "" H 3850 4500 50  0001 C CNN
	1    3850 4500
	0    1    1    0   
$EndComp
Text HLabel 5650 4500 0    50   BiDi ~ 0
AUX2-A1
Text HLabel 5650 4400 0    50   BiDi ~ 0
AUX2-PWM2
Text HLabel 5650 4300 0    50   BiDi ~ 0
AUX2-PWM1
Text HLabel 5650 4600 0    50   BiDi ~ 0
AUX2-A2
Text HLabel 5650 5500 0    50   BiDi ~ 0
AUX3-A1
Text HLabel 5650 5400 0    50   BiDi ~ 0
AUX3-PWM2
Text HLabel 5650 5300 0    50   BiDi ~ 0
AUX3-PWM1
Text HLabel 5650 5600 0    50   BiDi ~ 0
AUX3-A2
$Comp
L power:+5VP #PWR0171
U 1 1 60861A81
P 3850 4150
F 0 "#PWR0171" H 3850 4000 50  0001 C CNN
F 1 "+5VP" V 3865 4278 50  0000 L CNN
F 2 "" H 3850 4150 50  0001 C CNN
F 3 "" H 3850 4150 50  0001 C CNN
	1    3850 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VP #PWR0173
U 1 1 60861FC1
P 3850 4600
F 0 "#PWR0173" H 3850 4450 50  0001 C CNN
F 1 "+5VP" V 3865 4728 50  0000 L CNN
F 2 "" H 3850 4600 50  0001 C CNN
F 3 "" H 3850 4600 50  0001 C CNN
	1    3850 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 2900 3900 2900
Wire Wire Line
	3850 3000 3900 3000
Wire Wire Line
	3900 3450 3850 3450
Wire Wire Line
	3900 3350 3850 3350
Wire Wire Line
	3850 4600 3900 4600
Wire Wire Line
	3850 4500 3900 4500
Wire Wire Line
	3850 4150 3900 4150
Wire Wire Line
	3850 4050 3900 4050
$Sheet
S 7650 3350 650  200 
U 61A80161
F0 "Mosfet 2" 50
F1 "Mosfet.sch" 50
F2 "Enable" I L 7650 3450 50 
$EndSheet
Text HLabel 7650 3450 0    50   Input ~ 0
Mosfet_2_EN
$Sheet
S 7650 3800 650  200 
U 61A8092D
F0 "Mosfet 3" 50
F1 "Mosfet.sch" 50
F2 "Enable" I L 7650 3900 50 
$EndSheet
Text HLabel 7650 3900 0    50   Input ~ 0
Mosfet_3_EN
$Sheet
S 7650 4250 650  200 
U 61A80B8F
F0 "Mosfet 4" 50
F1 "Mosfet.sch" 50
F2 "Enable" I L 7650 4350 50 
$EndSheet
Text HLabel 7650 4350 0    50   Input ~ 0
Mosfet_4_EN
$Comp
L Connector:Conn_01x04_Male J21
U 1 1 5FA31EAD
P 4100 5450
F 0 "J21" H 4050 5300 50  0000 R CNN
F 1 "JST-SH 01x04" H 4050 5400 50  0000 R CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 4100 5450 50  0001 C CNN
F 3 "" H 4100 5450 50  0001 C CNN
F 4 "C145961" H 4100 5450 50  0001 C CNN "LCSC"
F 5 "+qwiic" H 4100 5450 50  0001 C CNN "Config"
F 6 "Qwiic" H 3950 5500 50  0000 C CNN "Notes"
	1    4100 5450
	-1   0    0    1   
$EndComp
Wire Notes Line
	3150 2750 3150 3650
Wire Notes Line
	3150 3650 4800 3650
Wire Notes Line
	4800 3650 4800 2750
Wire Notes Line
	4800 2750 3150 2750
Wire Notes Line
	3150 3900 4800 3900
Wire Notes Line
	4800 3900 4800 4850
Wire Notes Line
	4800 4850 3150 4850
Wire Notes Line
	3150 4850 3150 3900
Wire Notes Line
	3150 5100 4800 5100
Wire Notes Line
	4800 5100 4800 5700
Wire Notes Line
	4800 5700 3150 5700
Wire Notes Line
	3150 5700 3150 5100
Wire Wire Line
	3850 5550 3900 5550
Wire Wire Line
	3850 5450 3900 5450
Text Notes 3150 2750 0    50   ~ 0
Lighting
Text Notes 3150 3900 0    50   ~ 0
Servos
Text Notes 3150 5100 0    50   ~ 0
Sparkfun Qwiic
Wire Wire Line
	5600 3200 5650 3200
Wire Wire Line
	5600 3100 5650 3100
Wire Wire Line
	6200 3100 6150 3100
Wire Wire Line
	6150 4100 6200 4100
Wire Wire Line
	5600 4100 5650 4100
Wire Wire Line
	5600 4200 5650 4200
Wire Wire Line
	6150 5100 6200 5100
Wire Wire Line
	5650 5100 5600 5100
Wire Wire Line
	5600 5200 5650 5200
Wire Notes Line
	5050 2750 6750 2750
Wire Notes Line
	6750 2750 6750 5800
Wire Notes Line
	6750 5800 5050 5800
Wire Notes Line
	5050 5800 5050 2750
Text Notes 5050 2750 0    50   ~ 0
Auxiliary headers
Wire Notes Line
	7000 2750 8400 2750
Wire Notes Line
	8400 2750 8400 4600
Wire Notes Line
	8400 4600 7000 4600
Wire Notes Line
	7000 4600 7000 2750
Text Notes 7000 2750 0    50   ~ 0
Mosfets
$EndSCHEMATC
