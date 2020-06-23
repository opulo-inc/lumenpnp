EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9200 650  1750 600 
U 5EB0C248
F0 "motor_control" 50
F1 "motor_control.sch" 50
$EndSheet
$Sheet
S 9200 1550 1750 600 
U 5EB0C492
F0 "misc_output" 50
F1 "misc_output.sch" 50
$EndSheet
$Sheet
S 9200 2450 1750 600 
U 5EB0C5A0
F0 "misc_input" 50
F1 "misc_input.sch" 50
$EndSheet
$Sheet
S 9200 3300 1750 600 
U 5EB0C6B9
F0 "usb" 50
F1 "usb.sch" 50
$EndSheet
$Comp
L Device:Resonator_Small Y1
U 1 1 5EB0FFC9
P 2400 1050
F 0 "Y1" V 2095 1000 50  0000 C CNN
F 1 "32.768MHz" V 2186 1000 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 2375 1050 50  0001 C CNN
F 3 "~" H 2375 1050 50  0001 C CNN
	1    2400 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5EB1268B
P 3650 7200
F 0 "#PWR0113" H 3650 6950 50  0001 C CNN
F 1 "GND" H 3655 7027 50  0000 C CNN
F 2 "" H 3650 7200 50  0001 C CNN
F 3 "" H 3650 7200 50  0001 C CNN
	1    3650 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EB13616
P 1950 1050
F 0 "#PWR0114" H 1950 800 50  0001 C CNN
F 1 "GND" H 1955 877 50  0000 C CNN
F 2 "" H 1950 1050 50  0001 C CNN
F 3 "" H 1950 1050 50  0001 C CNN
	1    1950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 2200 1050
Wire Wire Line
	2500 950  2600 950 
Wire Wire Line
	2500 1150 2800 1150
$Sheet
S 9200 4100 1750 550 
U 5EB15D5B
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Comp
L Switch:SW_Push SW2
U 1 1 5EC6F1EA
P 1350 1050
F 0 "SW2" H 1350 1335 50  0000 C CNN
F 1 "RESET" H 1350 1244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 1350 1250 50  0001 C CNN
F 3 "" H 1350 1250 50  0001 C CNN
	1    1350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0259
U 1 1 5EEA8D23
P 1550 1150
F 0 "#PWR0259" H 1550 900 50  0001 C CNN
F 1 "GND" H 1555 977 50  0000 C CNN
F 2 "" H 1550 1150 50  0001 C CNN
F 3 "" H 1550 1150 50  0001 C CNN
	1    1550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1050 1550 1150
Text GLabel 1100 1050 0    50   Input ~ 0
RESET
$Comp
L Mechanical:MountingHole H1
U 1 1 5EFCBCC9
P 5200 800
F 0 "H1" H 5300 846 50  0000 L CNN
F 1 "MountingHole" H 5300 755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 5200 800 50  0001 C CNN
F 3 "~" H 5200 800 50  0001 C CNN
	1    5200 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EFCC681
P 5200 1050
F 0 "H2" H 5300 1096 50  0000 L CNN
F 1 "MountingHole" H 5300 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 5200 1050 50  0001 C CNN
F 3 "~" H 5200 1050 50  0001 C CNN
	1    5200 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EFCCB1E
P 6000 800
F 0 "H3" H 6100 846 50  0000 L CNN
F 1 "MountingHole" H 6100 755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6000 800 50  0001 C CNN
F 3 "~" H 6000 800 50  0001 C CNN
	1    6000 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EFCCE23
P 6000 1050
F 0 "H4" H 6100 1096 50  0000 L CNN
F 1 "MountingHole" H 6100 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6000 1050 50  0001 C CNN
F 3 "~" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
Text Notes 7000 6650 0    50   ~ 0
Therm3 -> VAC1\n
Text GLabel 7700 4050 2    50   Input ~ 0
Z_DIR
Text GLabel 7700 3250 2    50   Input ~ 0
Z_STEP
Text GLabel 7700 3150 2    50   Input ~ 0
Z_EN
Text GLabel 7500 2900 0    50   Input ~ 0
THERM1_SIG
Text GLabel 7500 3000 0    50   Input ~ 0
THERM2_SIG
Text GLabel 7500 2800 0    50   Input ~ 0
VAC1_SIG
Text GLabel 7700 5650 2    50   Input ~ 0
Y_LIMIT
Text GLabel 7500 4700 0    50   Input ~ 0
MOSFET4_EN
Text GLabel 7700 2350 2    50   Input ~ 0
MOSFET5_EN
Text GLabel 7500 4400 0    50   Input ~ 0
MOSFET1_EN
Text GLabel 7500 4500 0    50   Input ~ 0
MOSFET2_EN
Text GLabel 7500 5500 0    50   Input ~ 0
SERVO1_SIG
Text GLabel 7500 5100 0    50   Input ~ 0
Y_DIR
Text GLabel 7700 2850 2    50   Input ~ 0
Y_STEP
Text GLabel 7500 2500 0    50   Input ~ 0
ANALOG2
Text GLabel 7500 2600 0    50   Input ~ 0
ANALOG1
Text GLabel 7500 2700 0    50   Input ~ 0
VAC2_SIG
Text GLabel 7700 2950 2    50   Input ~ 0
Y_EN
Text GLabel 7500 1600 0    50   Input ~ 0
X_DIR
Text GLabel 7500 1500 0    50   Input ~ 0
X_STEP
Text GLabel 7700 5750 2    50   Input ~ 0
X_LIMIT
Text GLabel 7500 1800 0    50   Input ~ 0
C_STEP
Text GLabel 7700 4950 2    50   Input ~ 0
SERVO2_SIG
Text GLabel 7700 4750 2    50   Input ~ 0
RX
Text GLabel 7700 4650 2    50   Input ~ 0
TX
Text GLabel 7500 1400 0    50   Input ~ 0
X_EN
Text GLabel 7700 5550 2    50   Input ~ 0
Z_LIMIT
Text GLabel 7700 3850 2    50   Input ~ 0
SDA
Text GLabel 7700 3750 2    50   Input ~ 0
SCK
Text GLabel 7500 2000 0    50   Input ~ 0
P_EN
Text GLabel 7700 1350 2    50   Input ~ 0
DOWNWARDS_LIGHT_SIG
Text GLabel 7700 1450 2    50   Input ~ 0
UPWARDS_LIGHT_SIG
Text GLabel 7700 1250 2    50   Input ~ 0
RELAY1_EN
Text GLabel 7700 3950 2    50   Input ~ 0
P_DIR
Text GLabel 7500 1900 0    50   Input ~ 0
C_DIR
Text GLabel 7500 2100 0    50   Input ~ 0
P_STEP
Text GLabel 7500 1700 0    50   Input ~ 0
C_EN
Text GLabel 7700 2450 2    50   Input ~ 0
MOSFET6_EN
Text GLabel 7500 4600 0    50   Input ~ 0
MOSFET3_EN
Text GLabel 7700 2250 2    50   Input ~ 0
MISO
Text GLabel 7700 2150 2    50   Input ~ 0
MOSI
Text GLabel 7700 2050 2    50   Input ~ 0
SCL
Text GLabel 7700 3050 2    50   Input ~ 0
R_DIR
Text GLabel 7700 4450 2    50   Input ~ 0
R_STEP
Text GLabel 7500 5000 0    50   Input ~ 0
R_EN
Text GLabel 8450 5750 2    50   Input ~ 0
DTR
Text GLabel 8450 5350 2    50   Input ~ 0
CTS
$Comp
L Device:C_Small C24
U 1 1 5ECD109A
P 3150 900
F 0 "C24" H 3242 946 50  0000 L CNN
F 1 "1uF" H 3242 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3150 900 50  0001 C CNN
F 3 "~" H 3150 900 50  0001 C CNN
	1    3150 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0241
U 1 1 5ECD1C78
P 3150 1000
F 0 "#PWR0241" H 3150 750 50  0001 C CNN
F 1 "GND" H 3155 827 50  0000 C CNN
F 2 "" H 3150 1000 50  0001 C CNN
F 3 "" H 3150 1000 50  0001 C CNN
	1    3150 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J?
U 1 1 5EEECA88
P 1250 3300
F 0 "J?" H 807 3346 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2200 3850 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 1300 2750 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 900 2050 50  0001 C CNN
	1    1250 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EEF09A3
P 3750 1100
F 0 "#PWR?" H 3750 950 50  0001 C CNN
F 1 "+3V3" H 3765 1273 50  0000 C CNN
F 2 "" H 3750 1100 50  0001 C CNN
F 3 "" H 3750 1100 50  0001 C CNN
	1    3750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1050 1150 1050
Text GLabel 1300 6450 0    50   Input ~ 0
RESET
Text GLabel 1750 3000 2    50   Input ~ 0
RESET
Wire Wire Line
	3650 7200 3650 7100
Wire Wire Line
	3750 7100 3750 7200
Wire Wire Line
	3750 7200 3650 7200
Wire Wire Line
	3750 1250 3750 1150
Wire Wire Line
	3850 1250 3850 1150
Wire Wire Line
	3850 1150 3750 1150
Connection ~ 3750 1150
Wire Wire Line
	3750 1150 3750 1100
Wire Wire Line
	3950 1250 3950 1150
Wire Wire Line
	3950 1150 3850 1150
Connection ~ 3850 1150
Wire Wire Line
	4150 1250 4150 1150
Wire Wire Line
	4150 1150 4050 1150
Connection ~ 3950 1150
Wire Wire Line
	3400 1150 3400 650 
Wire Wire Line
	3400 650  3150 650 
Wire Wire Line
	3150 650  3150 800 
Wire Wire Line
	2800 1050 2600 1050
Wire Wire Line
	2600 1050 2600 950 
Text GLabel 1750 3200 2    50   Input ~ 0
SWCLK
Text GLabel 1750 3300 2    50   Input ~ 0
SWDIO
Text GLabel 1300 6150 0    50   Input ~ 0
SWCLK
Text GLabel 1300 6250 0    50   Input ~ 0
SWDIO
$Comp
L power:+3V3 #PWR?
U 1 1 5EF002D9
P 1250 2700
F 0 "#PWR?" H 1250 2550 50  0001 C CNN
F 1 "+3V3" H 1265 2873 50  0000 C CNN
F 2 "" H 1250 2700 50  0001 C CNN
F 3 "" H 1250 2700 50  0001 C CNN
	1    1250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF008CB
P 1150 4000
F 0 "#PWR?" H 1150 3750 50  0001 C CNN
F 1 "GND" H 1155 3827 50  0000 C CNN
F 2 "" H 1150 4000 50  0001 C CNN
F 3 "" H 1150 4000 50  0001 C CNN
	1    1150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4000 1150 3950
Wire Wire Line
	1150 3950 1250 3950
Wire Wire Line
	1250 3950 1250 3900
Connection ~ 1150 3950
Wire Wire Line
	1150 3950 1150 3900
Text GLabel 1300 5650 0    50   Input ~ 0
uC_D+
Text GLabel 1300 5550 0    50   Input ~ 0
uC_D-
$Comp
L Device:C_Small C?
U 1 1 5EF02584
P 850 1800
F 0 "C?" H 942 1846 50  0000 L CNN
F 1 "10uF" H 942 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1800 50  0001 C CNN
F 3 "~" H 850 1800 50  0001 C CNN
	1    850  1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EF028FA
P 850 1700
F 0 "#PWR?" H 850 1550 50  0001 C CNN
F 1 "+3V3" H 865 1873 50  0000 C CNN
F 2 "" H 850 1700 50  0001 C CNN
F 3 "" H 850 1700 50  0001 C CNN
	1    850  1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF03055
P 850 1900
F 0 "#PWR?" H 850 1650 50  0001 C CNN
F 1 "GND" H 855 1727 50  0000 C CNN
F 2 "" H 850 1900 50  0001 C CNN
F 3 "" H 850 1900 50  0001 C CNN
	1    850  1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EF034CB
P 1300 1800
F 0 "C?" H 1392 1846 50  0000 L CNN
F 1 "1uF" H 1392 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 1800 50  0001 C CNN
F 3 "~" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF0394F
P 1300 1900
F 0 "#PWR?" H 1300 1650 50  0001 C CNN
F 1 "GND" H 1305 1727 50  0000 C CNN
F 2 "" H 1300 1900 50  0001 C CNN
F 3 "" H 1300 1900 50  0001 C CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
Text GLabel 2800 1350 0    50   Input ~ 0
AREF
Text GLabel 1300 1550 2    50   Input ~ 0
AREF
Wire Wire Line
	1300 1550 1300 1700
Connection ~ 3650 7200
Wire Wire Line
	4050 1250 4050 1150
Connection ~ 4050 1150
Wire Wire Line
	4050 1150 3950 1150
$Comp
L MCU_ST_STM32F4:STM32F407VETx U?
U 1 1 5EF214E8
P 3850 4300
F 0 "U?" H 3850 4100 50  0000 C CNN
F 1 "STM32F407VETx" H 3850 4300 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 3150 1700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 3850 4300 50  0001 C CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7200 3850 7200
Wire Wire Line
	3850 7200 3850 7100
Connection ~ 3750 7200
Wire Wire Line
	3850 7200 3950 7200
Wire Wire Line
	3950 7200 3950 7100
Connection ~ 3850 7200
Wire Wire Line
	3950 7200 4050 7200
Wire Wire Line
	4050 7200 4050 7100
Connection ~ 3950 7200
$EndSCHEMATC
