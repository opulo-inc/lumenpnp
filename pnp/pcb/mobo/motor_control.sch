EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Device:CP C1
U 1 1 5E4332EA
P 750 900
F 0 "C1" H 868 946 50  0000 L CNN
F 1 "100uF" H 868 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 788 750 50  0001 C CNN
F 3 "~" H 750 900 50  0001 C CNN
	1    750  900 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 5E43652E
P 750 750
F 0 "#PWR0110" H 750 600 50  0001 C CNN
F 1 "+12V" H 700 900 50  0000 C CNN
F 2 "" H 750 750 50  0001 C CNN
F 3 "" H 750 750 50  0001 C CNN
	1    750  750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E436D6B
P 750 1050
F 0 "#PWR0111" H 750 800 50  0001 C CNN
F 1 "GND" H 755 877 50  0000 C CNN
F 2 "" H 750 1050 50  0001 C CNN
F 3 "" H 750 1050 50  0001 C CNN
	1    750  1050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E4399B6
P 1150 900
F 0 "C2" H 1268 946 50  0000 L CNN
F 1 "100uF" H 1268 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 1188 750 50  0001 C CNN
F 3 "~" H 1150 900 50  0001 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5E43CEF6
P 1550 900
F 0 "C3" H 1668 946 50  0000 L CNN
F 1 "100uF" H 1668 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 1588 750 50  0001 C CNN
F 3 "~" H 1550 900 50  0001 C CNN
	1    1550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 750  1150 750 
Wire Wire Line
	1150 750  750  750 
Connection ~ 1150 750 
Connection ~ 750  750 
Wire Wire Line
	1550 1050 1150 1050
Wire Wire Line
	1150 1050 750  1050
Connection ~ 1150 1050
Connection ~ 750  1050
$Comp
L Device:CP C4
U 1 1 5EB78194
P 2650 900
F 0 "C4" H 2768 946 50  0000 L CNN
F 1 "100uF" H 2768 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 2688 750 50  0001 C CNN
F 3 "~" H 2650 900 50  0001 C CNN
	1    2650 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0219
U 1 1 5EB7819A
P 2650 750
F 0 "#PWR0219" H 2650 600 50  0001 C CNN
F 1 "+12V" H 2600 900 50  0000 C CNN
F 2 "" H 2650 750 50  0001 C CNN
F 3 "" H 2650 750 50  0001 C CNN
	1    2650 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0220
U 1 1 5EB781A0
P 2650 1050
F 0 "#PWR0220" H 2650 800 50  0001 C CNN
F 1 "GND" H 2655 877 50  0000 C CNN
F 2 "" H 2650 1050 50  0001 C CNN
F 3 "" H 2650 1050 50  0001 C CNN
	1    2650 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5EB781A6
P 3050 900
F 0 "C5" H 3168 946 50  0000 L CNN
F 1 "100uF" H 3168 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3088 750 50  0001 C CNN
F 3 "~" H 3050 900 50  0001 C CNN
	1    3050 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5EB781AC
P 3450 900
F 0 "C6" H 3568 946 50  0000 L CNN
F 1 "100uF" H 3568 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3488 750 50  0001 C CNN
F 3 "~" H 3450 900 50  0001 C CNN
	1    3450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 750  3050 750 
Wire Wire Line
	3050 750  2650 750 
Connection ~ 3050 750 
Connection ~ 2650 750 
Wire Wire Line
	3450 1050 3050 1050
Wire Wire Line
	3050 1050 2650 1050
Connection ~ 3050 1050
Connection ~ 2650 1050
Text GLabel 1450 2225 0    50   Input ~ 0
X_STEP
Text GLabel 1450 2325 0    50   Input ~ 0
X_DIR
Text GLabel 4450 2025 0    50   Input ~ 0
R_EN
Text GLabel 4450 2125 0    50   Input ~ 0
R_STEP
Text GLabel 4450 2225 0    50   Input ~ 0
R_DIR
$Comp
L power:+3V3 #PWR0186
U 1 1 5F272746
P 4850 1425
F 0 "#PWR0186" H 4850 1275 50  0001 C CNN
F 1 "+3V3" H 4865 1598 50  0000 C CNN
F 2 "" H 4850 1425 50  0001 C CNN
F 3 "" H 4850 1425 50  0001 C CNN
	1    4850 1425
	1    0    0    -1  
$EndComp
Text GLabel 1450 2525 0    50   Input ~ 0
X_MS0_MOSI
Text GLabel 1450 2625 0    50   Input ~ 0
X_MS1_SCK
Text GLabel 1150 2725 0    50   Input ~ 0
X_MS2_CS
Text GLabel 1450 1825 0    50   Input ~ 0
X_RST_MISO
Text GLabel 4450 2425 0    50   Input ~ 0
R_MS0_MOSI
Text GLabel 4450 2525 0    50   Input ~ 0
R_MS1_SCK
Text GLabel 4150 2625 0    50   Input ~ 0
R_MS2_CS
Text GLabel 4450 1725 0    50   Input ~ 0
R_RST_MISO
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5F9DB932
P 9900 1450
F 0 "JP1" H 10050 1500 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9400 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 1450 50  0001 C CNN
F 3 "~" H 9900 1450 50  0001 C CNN
	1    9900 1450
	1    0    0    -1  
$EndComp
Text GLabel 10350 1450 2    50   Input ~ 0
MISO
Text GLabel 10350 1750 2    50   Input ~ 0
MOSI
Text GLabel 10350 2050 2    50   Input ~ 0
SCK
Text GLabel 8350 2350 2    50   Input ~ 0
X_CS
Text GLabel 8350 3550 2    50   Input ~ 0
Y_CS
Text GLabel 8350 4750 2    50   Input ~ 0
Z_CS
Text GLabel 10350 2350 2    50   Input ~ 0
R_CS
Text GLabel 10350 3550 2    50   Input ~ 0
P_CS
Text GLabel 10350 4750 2    50   Input ~ 0
C_CS
Text GLabel 9900 1600 0    50   Input ~ 0
R_RST_MISO
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5FA05F36
P 9900 1750
F 0 "JP2" H 10050 1800 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9400 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 1750 50  0001 C CNN
F 3 "~" H 9900 1750 50  0001 C CNN
	1    9900 1750
	1    0    0    -1  
$EndComp
Text GLabel 9900 1900 0    50   Input ~ 0
R_MS0_MOSI
Text GLabel 9900 2200 0    50   Input ~ 0
R_MS1_SCK
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5FA179B6
P 9900 2050
F 0 "JP3" H 10050 2100 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9400 2100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2050 50  0001 C CNN
F 3 "~" H 9900 2050 50  0001 C CNN
	1    9900 2050
	1    0    0    -1  
$EndComp
Text GLabel 9900 2500 0    50   Input ~ 0
R_MS2_CS
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5FA58B55
P 9900 2350
F 0 "JP4" H 10050 2400 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9400 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2350 50  0001 C CNN
F 3 "~" H 9900 2350 50  0001 C CNN
	1    9900 2350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP5
U 1 1 5FA6C903
P 9900 2650
F 0 "JP5" H 10075 2700 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2650 50  0001 C CNN
F 3 "~" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
Text GLabel 9900 2800 0    50   Input ~ 0
P_RST_MISO
$Comp
L Jumper:SolderJumper_3_Open JP6
U 1 1 5FA7C916
P 9900 2950
F 0 "JP6" H 10075 3000 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 3000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2950 50  0001 C CNN
F 3 "~" H 9900 2950 50  0001 C CNN
	1    9900 2950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP7
U 1 1 5FA83B23
P 9900 3250
F 0 "JP7" H 10075 3300 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 3250 50  0001 C CNN
F 3 "~" H 9900 3250 50  0001 C CNN
	1    9900 3250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP8
U 1 1 5FA8A8F1
P 9900 3550
F 0 "JP8" H 10075 3600 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 3550 50  0001 C CNN
F 3 "~" H 9900 3550 50  0001 C CNN
	1    9900 3550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP9
U 1 1 5FA9214F
P 9900 3850
F 0 "JP9" H 10075 3900 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 3850 50  0001 C CNN
F 3 "~" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP10
U 1 1 5FA98EF3
P 9900 4150
F 0 "JP10" H 10075 4200 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 4200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
	1    9900 4150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP11
U 1 1 5FA9FF0C
P 9900 4450
F 0 "JP11" H 10075 4500 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 4500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 4450 50  0001 C CNN
F 3 "~" H 9900 4450 50  0001 C CNN
	1    9900 4450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP12
U 1 1 5FAA73EB
P 9900 4750
F 0 "JP12" H 10075 4800 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9375 4800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1450 9700 1450
Wire Wire Line
	10100 1750 10200 1750
Wire Wire Line
	10350 1450 10150 1450
Wire Wire Line
	9300 1750 9700 1750
Wire Wire Line
	9300 2050 9700 2050
Wire Wire Line
	10100 2050 10250 2050
Wire Wire Line
	10150 1450 10150 2650
Connection ~ 10150 1450
Wire Wire Line
	10150 1450 10100 1450
Wire Wire Line
	10200 1750 10200 2950
Connection ~ 10200 1750
Wire Wire Line
	10200 1750 10350 1750
Wire Wire Line
	10250 2050 10250 3250
Connection ~ 10250 2050
Wire Wire Line
	10250 2050 10350 2050
Wire Wire Line
	9300 2650 9700 2650
Wire Wire Line
	9300 2950 9700 2950
Wire Wire Line
	9300 3250 9700 3250
Wire Wire Line
	9300 3550 9700 3550
Wire Wire Line
	9300 3850 9700 3850
Wire Wire Line
	9300 4150 9700 4150
Wire Wire Line
	9300 4450 9700 4450
Wire Wire Line
	9300 4750 9700 4750
Text GLabel 9900 3100 0    50   Input ~ 0
P_MS0_MOSI
Text GLabel 9900 3400 0    50   Input ~ 0
P_MS1_SCK
Text GLabel 9900 3700 0    50   Input ~ 0
P_MS2_CS
Wire Wire Line
	10100 2650 10150 2650
Connection ~ 10150 2650
Wire Wire Line
	10150 2650 10150 3850
Wire Wire Line
	10100 3550 10350 3550
Wire Wire Line
	10100 2950 10200 2950
Connection ~ 10200 2950
Wire Wire Line
	10200 2950 10200 4150
Wire Wire Line
	10100 3250 10250 3250
Connection ~ 10250 3250
Wire Wire Line
	10250 3250 10250 4450
Wire Wire Line
	10100 3850 10150 3850
Wire Wire Line
	10100 4150 10200 4150
Wire Wire Line
	10100 4450 10250 4450
Text GLabel 9900 4000 0    50   Input ~ 0
C_RST_MISO
Text GLabel 9900 4300 0    50   Input ~ 0
C_MS0_MOSI
Text GLabel 9900 4600 0    50   Input ~ 0
C_MS1_SCK
Text GLabel 9900 4900 0    50   Input ~ 0
C_MS2_CS
Wire Wire Line
	10100 2350 10350 2350
Wire Wire Line
	10100 4750 10350 4750
$Comp
L Jumper:SolderJumper_3_Open JP13
U 1 1 5F9E5B59
P 7900 1450
F 0 "JP13" H 8050 1500 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7400 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 1450 50  0001 C CNN
F 3 "~" H 7900 1450 50  0001 C CNN
	1    7900 1450
	1    0    0    -1  
$EndComp
Text GLabel 8350 1450 2    50   Input ~ 0
MISO
Text GLabel 8350 1750 2    50   Input ~ 0
MOSI
Text GLabel 8350 2050 2    50   Input ~ 0
SCK
$Comp
L Jumper:SolderJumper_3_Open JP14
U 1 1 5F9E5B74
P 7900 1750
F 0 "JP14" H 8050 1800 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7400 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 1750 50  0001 C CNN
F 3 "~" H 7900 1750 50  0001 C CNN
	1    7900 1750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP15
U 1 1 5F9E5B8A
P 7900 2050
F 0 "JP15" H 8050 2100 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7400 2100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 2050 50  0001 C CNN
F 3 "~" H 7900 2050 50  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP16
U 1 1 5F9E5B9F
P 7900 2350
F 0 "JP16" H 8050 2400 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7400 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 2350 50  0001 C CNN
F 3 "~" H 7900 2350 50  0001 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP17
U 1 1 5F9E5BB4
P 7900 2650
F 0 "JP17" H 8075 2700 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 2650 50  0001 C CNN
F 3 "~" H 7900 2650 50  0001 C CNN
	1    7900 2650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP18
U 1 1 5F9E5BC9
P 7900 2950
F 0 "JP18" H 8075 3000 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 3000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 2950 50  0001 C CNN
F 3 "~" H 7900 2950 50  0001 C CNN
	1    7900 2950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP20
U 1 1 5F9E5BF1
P 7900 3550
F 0 "JP20" H 8075 3600 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 3550 50  0001 C CNN
F 3 "~" H 7900 3550 50  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP21
U 1 1 5F9E5C05
P 7900 3850
F 0 "JP21" H 8075 3900 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 3850 50  0001 C CNN
F 3 "~" H 7900 3850 50  0001 C CNN
	1    7900 3850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP22
U 1 1 5F9E5C19
P 7900 4150
F 0 "JP22" H 8075 4200 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 4200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 4150 50  0001 C CNN
F 3 "~" H 7900 4150 50  0001 C CNN
	1    7900 4150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP23
U 1 1 5F9E5C2D
P 7900 4450
F 0 "JP23" H 8075 4500 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 4500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 4450 50  0001 C CNN
F 3 "~" H 7900 4450 50  0001 C CNN
	1    7900 4450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP24
U 1 1 5F9E5C41
P 7900 4750
F 0 "JP24" H 8075 4800 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 4800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 4750 50  0001 C CNN
F 3 "~" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1450 7700 1450
Wire Wire Line
	8100 1750 8200 1750
Wire Wire Line
	8350 1450 8150 1450
Wire Wire Line
	7300 1750 7700 1750
Wire Wire Line
	7300 2050 7700 2050
Wire Wire Line
	8100 2050 8250 2050
Wire Wire Line
	8150 1450 8150 2650
Connection ~ 8150 1450
Wire Wire Line
	8150 1450 8100 1450
Wire Wire Line
	8200 1750 8200 2950
Connection ~ 8200 1750
Wire Wire Line
	8200 1750 8350 1750
Wire Wire Line
	8250 2050 8250 3250
Connection ~ 8250 2050
Wire Wire Line
	8250 2050 8350 2050
Wire Wire Line
	7300 2650 7700 2650
Wire Wire Line
	7300 2950 7700 2950
Wire Wire Line
	7300 3250 7700 3250
Wire Wire Line
	7300 3550 7700 3550
Wire Wire Line
	7300 3850 7700 3850
Wire Wire Line
	7300 4150 7700 4150
Wire Wire Line
	7300 4450 7700 4450
Wire Wire Line
	7300 4750 7700 4750
Wire Wire Line
	8100 2650 8150 2650
Connection ~ 8150 2650
Wire Wire Line
	8150 2650 8150 3850
Wire Wire Line
	8100 3550 8350 3550
Wire Wire Line
	8100 2950 8200 2950
Connection ~ 8200 2950
Wire Wire Line
	8200 2950 8200 4150
Wire Wire Line
	8100 3250 8250 3250
Connection ~ 8250 3250
Wire Wire Line
	8250 3250 8250 4450
Wire Wire Line
	8100 3850 8150 3850
Wire Wire Line
	8100 4150 8200 4150
Wire Wire Line
	8100 4450 8250 4450
Wire Wire Line
	8100 2350 8350 2350
Wire Wire Line
	8100 4750 8350 4750
$Comp
L Jumper:SolderJumper_3_Open JP19
U 1 1 5F9E5BDD
P 7900 3250
F 0 "JP19" H 8075 3300 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7375 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7900 3250 50  0001 C CNN
F 3 "~" H 7900 3250 50  0001 C CNN
	1    7900 3250
	1    0    0    -1  
$EndComp
Text GLabel 7900 1600 0    50   Input ~ 0
X_RST_MISO
Text GLabel 7900 1900 0    50   Input ~ 0
X_MS0_MOSI
Text GLabel 7900 2200 0    50   Input ~ 0
X_MS1_SCK
Text GLabel 7900 2500 0    50   Input ~ 0
X_MS2_CS
Text GLabel 7900 2800 0    50   Input ~ 0
Y_RST_MISO
Text GLabel 7900 3100 0    50   Input ~ 0
Y_MS0_MOSI
Text GLabel 7900 3400 0    50   Input ~ 0
Y_MS1_SCK
Text GLabel 7900 3700 0    50   Input ~ 0
Y_MS2_CS
Text GLabel 7900 4000 0    50   Input ~ 0
Z_RST_MISO
Text GLabel 7900 4300 0    50   Input ~ 0
Z_MS0_MOSI
Text GLabel 7900 4600 0    50   Input ~ 0
Z_MS1_SCK
Text GLabel 7900 4900 0    50   Input ~ 0
Z_MS2_CS
$Comp
L power:+3V3 #PWR0125
U 1 1 5FA03C15
P 7300 1350
F 0 "#PWR0125" H 7300 1200 50  0001 C CNN
F 1 "+3V3" H 7315 1523 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4750 7300 4450
Connection ~ 7300 1750
Wire Wire Line
	7300 1750 7300 1450
Connection ~ 7300 2050
Wire Wire Line
	7300 2050 7300 1750
Connection ~ 7300 2650
Wire Wire Line
	7300 2650 7300 2350
Connection ~ 7300 2950
Wire Wire Line
	7300 2950 7300 2650
Connection ~ 7300 3250
Wire Wire Line
	7300 3250 7300 2950
Connection ~ 7300 3550
Wire Wire Line
	7300 3550 7300 3250
Connection ~ 7300 3850
Wire Wire Line
	7300 3850 7300 3550
Connection ~ 7300 4150
Wire Wire Line
	7300 4150 7300 3850
Connection ~ 7300 4450
Wire Wire Line
	7300 4450 7300 4150
Wire Wire Line
	7300 1350 7300 1450
Connection ~ 7300 1450
Wire Wire Line
	7700 2350 7300 2350
Connection ~ 7300 2350
Wire Wire Line
	7300 2350 7300 2050
Wire Wire Line
	9300 4750 9300 4450
Connection ~ 9300 1750
Wire Wire Line
	9300 1750 9300 1450
Connection ~ 9300 2050
Wire Wire Line
	9300 2050 9300 1750
Connection ~ 9300 2650
Wire Wire Line
	9300 2650 9300 2350
Connection ~ 9300 2950
Wire Wire Line
	9300 2950 9300 2650
Connection ~ 9300 3250
Wire Wire Line
	9300 3250 9300 2950
Connection ~ 9300 3550
Wire Wire Line
	9300 3550 9300 3250
Connection ~ 9300 3850
Wire Wire Line
	9300 3850 9300 3550
Connection ~ 9300 4150
Wire Wire Line
	9300 4150 9300 3850
Connection ~ 9300 4450
Wire Wire Line
	9300 4450 9300 4150
Wire Wire Line
	9700 2350 9300 2350
Connection ~ 9300 2350
Wire Wire Line
	9300 2350 9300 2050
$Comp
L power:+3V3 #PWR0187
U 1 1 5FA5CA7A
P 9300 1350
F 0 "#PWR0187" H 9300 1200 50  0001 C CNN
F 1 "+3V3" H 9315 1523 50  0000 C CNN
F 2 "" H 9300 1350 50  0001 C CNN
F 3 "" H 9300 1350 50  0001 C CNN
	1    9300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1450 9300 1350
Connection ~ 9300 1450
Text GLabel 1450 2125 0    50   Input ~ 0
X_EN
$Comp
L Device:R R46
U 1 1 5FE853A1
P 4300 2625
F 0 "R46" V 4400 2625 50  0000 C CNN
F 1 "1k" V 4500 2625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 2625 50  0001 C CNN
F 3 "~" H 4300 2625 50  0001 C CNN
	1    4300 2625
	0    1    1    0   
$EndComp
$Comp
L Device:R R44
U 1 1 5FE9EC8A
P 1300 2725
F 0 "R44" V 1400 2725 50  0000 C CNN
F 1 "1k" V 1500 2725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2725 50  0001 C CNN
F 3 "~" H 1300 2725 50  0001 C CNN
	1    1300 2725
	0    1    1    0   
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A4
U 1 1 5FF58A40
P 4850 2125
F 0 "A4" H 5250 2900 50  0000 C CNN
F 1 "R_MOTOR_DRIVER" H 5500 2800 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5125 1375 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4950 1825 50  0001 C CNN
	1    4850 2125
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0131
U 1 1 5FF76CB4
P 5050 1425
F 0 "#PWR0131" H 5050 1275 50  0001 C CNN
F 1 "+12V" H 5065 1598 50  0000 C CNN
F 2 "" H 5050 1425 50  0001 C CNN
F 3 "" H 5050 1425 50  0001 C CNN
	1    5050 1425
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0208
U 1 1 5FF7EDB3
P 4450 1825
F 0 "#PWR0208" H 4450 1675 50  0001 C CNN
F 1 "+3.3V" V 4465 1953 50  0000 L CNN
F 2 "" H 4450 1825 50  0001 C CNN
F 3 "" H 4450 1825 50  0001 C CNN
	1    4450 1825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0232
U 1 1 5FFB3129
P 4950 2925
F 0 "#PWR0232" H 4950 2675 50  0001 C CNN
F 1 "GND" H 4955 2752 50  0000 C CNN
F 2 "" H 4950 2925 50  0001 C CNN
F 3 "" H 4950 2925 50  0001 C CNN
	1    4950 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2925 4950 2925
Connection ~ 4950 2925
Wire Wire Line
	4950 2925 5050 2925
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 5FFC02E8
P 5775 2225
F 0 "M1" H 5963 2349 50  0000 L CNN
F 1 "R_MOTOR" H 5963 2258 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5785 2215 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 5785 2215 50  0001 C CNN
	1    5775 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 1925 5350 1925
Wire Wire Line
	5350 1925 5350 2025
Wire Wire Line
	7050 625  7050 550 
Wire Wire Line
	5875 1850 5400 1850
Wire Wire Line
	5400 1850 5400 2125
Wire Wire Line
	5400 2125 5350 2125
Wire Wire Line
	5475 2125 5475 2225
Wire Wire Line
	5475 2225 5350 2225
Wire Wire Line
	5475 2325 5350 2325
Wire Wire Line
	5875 1925 5875 1850
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A1
U 1 1 600C0AD5
P 1850 2225
F 0 "A1" H 2250 3000 50  0000 C CNN
F 1 "X_MOTOR_DRIVER" H 2500 2900 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2125 1475 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 1950 1925 50  0001 C CNN
	1    1850 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60104754
P 1950 3025
F 0 "#PWR0106" H 1950 2775 50  0001 C CNN
F 1 "GND" H 1955 2852 50  0000 C CNN
F 2 "" H 1950 3025 50  0001 C CNN
F 3 "" H 1950 3025 50  0001 C CNN
	1    1950 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3025 1950 3025
Connection ~ 1950 3025
Wire Wire Line
	1950 3025 2050 3025
$Comp
L Motor:Stepper_Motor_bipolar M2
U 1 1 6011B944
P 2775 2325
F 0 "M2" H 2963 2449 50  0000 L CNN
F 1 "X_MOTOR" H 2963 2358 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2785 2315 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 2785 2315 50  0001 C CNN
	1    2775 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 2025 2350 2025
Wire Wire Line
	2875 1950 2400 1950
Wire Wire Line
	2400 1950 2400 2225
Wire Wire Line
	2400 2225 2350 2225
Wire Wire Line
	2475 2225 2475 2325
Wire Wire Line
	2475 2325 2350 2325
Wire Wire Line
	2475 2425 2350 2425
Wire Wire Line
	2875 2025 2875 1950
Wire Wire Line
	2350 2025 2350 2125
$Comp
L power:+3V3 #PWR0109
U 1 1 6013853A
P 1850 1525
F 0 "#PWR0109" H 1850 1375 50  0001 C CNN
F 1 "+3V3" H 1865 1698 50  0000 C CNN
F 2 "" H 1850 1525 50  0001 C CNN
F 3 "" H 1850 1525 50  0001 C CNN
	1    1850 1525
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 60138E1E
P 2050 1525
F 0 "#PWR0112" H 2050 1375 50  0001 C CNN
F 1 "+12V" H 2065 1698 50  0000 C CNN
F 2 "" H 2050 1525 50  0001 C CNN
F 3 "" H 2050 1525 50  0001 C CNN
	1    2050 1525
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0233
U 1 1 6016163C
P 1450 1925
F 0 "#PWR0233" H 1450 1775 50  0001 C CNN
F 1 "+3.3V" V 1465 2053 50  0000 L CNN
F 2 "" H 1450 1925 50  0001 C CNN
F 3 "" H 1450 1925 50  0001 C CNN
	1    1450 1925
	0    -1   -1   0   
$EndComp
Text GLabel 1475 4300 0    50   Input ~ 0
Y_STEP
Text GLabel 1475 4400 0    50   Input ~ 0
Y_DIR
Text GLabel 1475 3900 0    50   Input ~ 0
Y_RST_MISO
Text GLabel 1475 4600 0    50   Input ~ 0
Y_MS0_MOSI
Text GLabel 1475 4700 0    50   Input ~ 0
Y_MS1_SCK
Text GLabel 1175 4800 0    50   Input ~ 0
Y_MS2_CS
Text GLabel 1475 4200 0    50   Input ~ 0
Y_EN
$Comp
L Device:R R43
U 1 1 5FE77D44
P 1325 4800
F 0 "R43" V 1425 4800 50  0000 C CNN
F 1 "1k" V 1525 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1255 4800 50  0001 C CNN
F 3 "~" H 1325 4800 50  0001 C CNN
	1    1325 4800
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 601C59CA
P 1875 3600
F 0 "#PWR0101" H 1875 3450 50  0001 C CNN
F 1 "+3V3" H 1890 3773 50  0000 C CNN
F 2 "" H 1875 3600 50  0001 C CNN
F 3 "" H 1875 3600 50  0001 C CNN
	1    1875 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0108
U 1 1 601C59D6
P 2075 3600
F 0 "#PWR0108" H 2075 3450 50  0001 C CNN
F 1 "+12V" H 2090 3773 50  0000 C CNN
F 2 "" H 2075 3600 50  0001 C CNN
F 3 "" H 2075 3600 50  0001 C CNN
	1    2075 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 601C59DC
P 1975 5100
F 0 "#PWR0123" H 1975 4850 50  0001 C CNN
F 1 "GND" H 1980 4927 50  0000 C CNN
F 2 "" H 1975 5100 50  0001 C CNN
F 3 "" H 1975 5100 50  0001 C CNN
	1    1975 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 5100 1975 5100
Connection ~ 1975 5100
Wire Wire Line
	1975 5100 2075 5100
$Comp
L Motor:Stepper_Motor_bipolar M4
U 1 1 601C59E5
P 3025 4125
F 0 "M4" H 3213 4249 50  0000 L CNN
F 1 "Y_MOTOR1" H 3213 4158 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3035 4115 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 3035 4115 50  0001 C CNN
	1    3025 4125
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 601FCE8C
P 1475 4000
F 0 "#PWR0133" H 1475 3850 50  0001 C CNN
F 1 "+3.3V" V 1490 4128 50  0000 L CNN
F 2 "" H 1475 4000 50  0001 C CNN
F 3 "" H 1475 4000 50  0001 C CNN
	1    1475 4000
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M5
U 1 1 6021E13D
P 3025 4725
F 0 "M5" H 3213 4849 50  0000 L CNN
F 1 "Y_MOTOR2" H 3213 4758 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3035 4715 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 3035 4715 50  0001 C CNN
	1    3025 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 4200 2450 4200
Wire Wire Line
	2450 4200 2450 3825
Wire Wire Line
	2450 3825 2925 3825
Wire Wire Line
	3125 3825 3600 3825
Wire Wire Line
	3600 3825 3600 4300
Wire Wire Line
	3600 4300 2925 4300
Wire Wire Line
	2925 4300 2925 4425
Wire Wire Line
	3125 4425 3125 4350
Wire Wire Line
	3125 4350 2450 4350
Wire Wire Line
	2450 4350 2450 4300
Wire Wire Line
	2450 4300 2375 4300
Wire Wire Line
	2375 4400 2575 4400
Wire Wire Line
	2575 4400 2575 4025
Wire Wire Line
	2575 4025 2725 4025
Wire Wire Line
	2725 4225 2725 4625
Wire Wire Line
	2725 4825 2450 4825
Wire Wire Line
	2450 4825 2450 4500
Wire Wire Line
	2450 4500 2375 4500
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A3
U 1 1 601C59D0
P 1875 4300
F 0 "A3" H 2275 5075 50  0000 C CNN
F 1 "Y_MOTOR_DRIVER" H 2525 4975 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2150 3550 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 1975 4000 50  0001 C CNN
	1    1875 4300
	1    0    0    -1  
$EndComp
Text GLabel 1450 6425 0    50   Input ~ 0
Z_STEP
Text GLabel 1450 6525 0    50   Input ~ 0
Z_DIR
Text GLabel 1450 6025 0    50   Input ~ 0
Z_RST_MISO
Text GLabel 1450 6725 0    50   Input ~ 0
Z_MS0_MOSI
Text GLabel 1450 6825 0    50   Input ~ 0
Z_MS1_SCK
Text GLabel 1150 6925 0    50   Input ~ 0
Z_MS2_CS
Text GLabel 1450 6325 0    50   Input ~ 0
Z_EN
$Comp
L Device:R R45
U 1 1 5FEA6A5A
P 1300 6925
F 0 "R45" V 1400 6925 50  0000 C CNN
F 1 "1k" V 1500 6925 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 6925 50  0001 C CNN
F 3 "~" H 1300 6925 50  0001 C CNN
	1    1300 6925
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0235
U 1 1 604DB3B5
P 1850 5725
F 0 "#PWR0235" H 1850 5575 50  0001 C CNN
F 1 "+3V3" H 1865 5898 50  0000 C CNN
F 2 "" H 1850 5725 50  0001 C CNN
F 3 "" H 1850 5725 50  0001 C CNN
	1    1850 5725
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A2
U 1 1 604DB3BB
P 1850 6425
F 0 "A2" H 2250 7200 50  0000 C CNN
F 1 "Z_MOTOR_DRIVER" H 2500 7100 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2125 5675 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 1950 6125 50  0001 C CNN
	1    1850 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0236
U 1 1 604DB3C1
P 2050 5725
F 0 "#PWR0236" H 2050 5575 50  0001 C CNN
F 1 "+12V" H 2065 5898 50  0000 C CNN
F 2 "" H 2050 5725 50  0001 C CNN
F 3 "" H 2050 5725 50  0001 C CNN
	1    2050 5725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0237
U 1 1 604DB3C7
P 1950 7225
F 0 "#PWR0237" H 1950 6975 50  0001 C CNN
F 1 "GND" H 1955 7052 50  0000 C CNN
F 2 "" H 1950 7225 50  0001 C CNN
F 3 "" H 1950 7225 50  0001 C CNN
	1    1950 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7225 1950 7225
Connection ~ 1950 7225
Wire Wire Line
	1950 7225 2050 7225
$Comp
L Motor:Stepper_Motor_bipolar M3
U 1 1 604DB3D0
P 2775 6525
F 0 "M3" H 2963 6649 50  0000 L CNN
F 1 "Z_MOTOR" H 2963 6558 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2785 6515 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 2785 6515 50  0001 C CNN
	1    2775 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 6225 2350 6225
Wire Wire Line
	2350 6225 2350 6325
Wire Wire Line
	2875 6150 2400 6150
Wire Wire Line
	2400 6150 2400 6425
Wire Wire Line
	2400 6425 2350 6425
Wire Wire Line
	2475 6425 2475 6525
Wire Wire Line
	2475 6525 2350 6525
Wire Wire Line
	2475 6625 2350 6625
Wire Wire Line
	2875 6225 2875 6150
$Comp
L power:+3.3V #PWR0238
U 1 1 604EF66B
P 1450 6125
F 0 "#PWR0238" H 1450 5975 50  0001 C CNN
F 1 "+3.3V" V 1465 6253 50  0000 L CNN
F 2 "" H 1450 6125 50  0001 C CNN
F 3 "" H 1450 6125 50  0001 C CNN
	1    1450 6125
	0    -1   -1   0   
$EndComp
Text GLabel 4450 4225 0    50   Input ~ 0
P_EN
Text GLabel 4450 4325 0    50   Input ~ 0
P_STEP
Text GLabel 4450 4425 0    50   Input ~ 0
P_DIR
Text GLabel 4450 4625 0    50   Input ~ 0
P_MS0_MOSI
Text GLabel 4450 4725 0    50   Input ~ 0
P_MS1_SCK
Text GLabel 4150 4825 0    50   Input ~ 0
P_MS2_CS
Text GLabel 4450 3925 0    50   Input ~ 0
P_RST_MISO
$Comp
L Device:R R47
U 1 1 5FE64F8F
P 4300 4825
F 0 "R47" V 4400 4825 50  0000 C CNN
F 1 "1k" V 4500 4825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 4825 50  0001 C CNN
F 3 "~" H 4300 4825 50  0001 C CNN
	1    4300 4825
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 603FD343
P 4850 3625
F 0 "#PWR0134" H 4850 3475 50  0001 C CNN
F 1 "+3V3" H 4865 3798 50  0000 C CNN
F 2 "" H 4850 3625 50  0001 C CNN
F 3 "" H 4850 3625 50  0001 C CNN
	1    4850 3625
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A6
U 1 1 603FD349
P 4850 4325
F 0 "A6" H 5250 5100 50  0000 C CNN
F 1 "P_MOTOR_DRIVER" H 5500 5000 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5125 3575 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4950 4025 50  0001 C CNN
	1    4850 4325
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0136
U 1 1 603FD34F
P 5050 3625
F 0 "#PWR0136" H 5050 3475 50  0001 C CNN
F 1 "+12V" H 5065 3798 50  0000 C CNN
F 2 "" H 5050 3625 50  0001 C CNN
F 3 "" H 5050 3625 50  0001 C CNN
	1    5050 3625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 603FD355
P 4950 5125
F 0 "#PWR0137" H 4950 4875 50  0001 C CNN
F 1 "GND" H 4955 4952 50  0000 C CNN
F 2 "" H 4950 5125 50  0001 C CNN
F 3 "" H 4950 5125 50  0001 C CNN
	1    4950 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5125 4950 5125
Connection ~ 4950 5125
Wire Wire Line
	4950 5125 5050 5125
$Comp
L Motor:Stepper_Motor_bipolar M7
U 1 1 603FD35E
P 5775 4425
F 0 "M7" H 5963 4549 50  0000 L CNN
F 1 "P_MOTOR" H 5963 4458 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5785 4415 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 5785 4415 50  0001 C CNN
	1    5775 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 4125 5350 4125
Wire Wire Line
	5350 4125 5350 4225
Wire Wire Line
	5875 4050 5400 4050
Wire Wire Line
	5400 4050 5400 4325
Wire Wire Line
	5400 4325 5350 4325
Wire Wire Line
	5475 4325 5475 4425
Wire Wire Line
	5475 4425 5350 4425
Wire Wire Line
	5475 4525 5350 4525
Wire Wire Line
	5875 4125 5875 4050
$Comp
L power:+3.3V #PWR0188
U 1 1 6047BA18
P 4450 4025
F 0 "#PWR0188" H 4450 3875 50  0001 C CNN
F 1 "+3.3V" V 4465 4153 50  0000 L CNN
F 2 "" H 4450 4025 50  0001 C CNN
F 3 "" H 4450 4025 50  0001 C CNN
	1    4450 4025
	0    -1   -1   0   
$EndComp
Text GLabel 4425 6325 0    50   Input ~ 0
C_EN
Text GLabel 4425 6425 0    50   Input ~ 0
C_STEP
Text GLabel 4425 6525 0    50   Input ~ 0
C_DIR
Text GLabel 4425 6725 0    50   Input ~ 0
C_MS0_MOSI
Text GLabel 4425 6825 0    50   Input ~ 0
C_MS1_SCK
Text GLabel 4125 6925 0    50   Input ~ 0
C_MS2_CS
Text GLabel 4425 6025 0    50   Input ~ 0
C_RST_MISO
$Comp
L Device:R R48
U 1 1 5FED0D72
P 4275 6925
F 0 "R48" V 4375 6925 50  0000 C CNN
F 1 "1k" V 4475 6925 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4205 6925 50  0001 C CNN
F 3 "~" H 4275 6925 50  0001 C CNN
	1    4275 6925
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0191
U 1 1 6049A3ED
P 4825 5725
F 0 "#PWR0191" H 4825 5575 50  0001 C CNN
F 1 "+3V3" H 4840 5898 50  0000 C CNN
F 2 "" H 4825 5725 50  0001 C CNN
F 3 "" H 4825 5725 50  0001 C CNN
	1    4825 5725
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A5
U 1 1 6049A3F3
P 4825 6425
F 0 "A5" H 5225 7200 50  0000 C CNN
F 1 "C_MOTOR_DRIVER" H 5475 7100 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5100 5675 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4925 6125 50  0001 C CNN
	1    4825 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0193
U 1 1 6049A3F9
P 5025 5725
F 0 "#PWR0193" H 5025 5575 50  0001 C CNN
F 1 "+12V" H 5040 5898 50  0000 C CNN
F 2 "" H 5025 5725 50  0001 C CNN
F 3 "" H 5025 5725 50  0001 C CNN
	1    5025 5725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 6049A3FF
P 4925 7225
F 0 "#PWR0198" H 4925 6975 50  0001 C CNN
F 1 "GND" H 4930 7052 50  0000 C CNN
F 2 "" H 4925 7225 50  0001 C CNN
F 3 "" H 4925 7225 50  0001 C CNN
	1    4925 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 7225 4925 7225
Connection ~ 4925 7225
Wire Wire Line
	4925 7225 5025 7225
$Comp
L Motor:Stepper_Motor_bipolar M6
U 1 1 6049A408
P 5750 6525
F 0 "M6" H 5938 6649 50  0000 L CNN
F 1 "C_MOTOR" H 5938 6558 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5760 6515 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 5760 6515 50  0001 C CNN
	1    5750 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6225 5325 6225
Wire Wire Line
	5325 6225 5325 6325
Wire Wire Line
	5850 6150 5375 6150
Wire Wire Line
	5375 6150 5375 6425
Wire Wire Line
	5375 6425 5325 6425
Wire Wire Line
	5450 6425 5450 6525
Wire Wire Line
	5450 6525 5325 6525
Wire Wire Line
	5450 6625 5325 6625
Wire Wire Line
	5850 6225 5850 6150
$Comp
L power:+3.3V #PWR0207
U 1 1 604B74F2
P 4425 6125
F 0 "#PWR0207" H 4425 5975 50  0001 C CNN
F 1 "+3.3V" V 4440 6253 50  0000 L CNN
F 2 "" H 4425 6125 50  0001 C CNN
F 3 "" H 4425 6125 50  0001 C CNN
	1    4425 6125
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
