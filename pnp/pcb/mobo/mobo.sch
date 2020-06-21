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
P 2500 2000
F 0 "Y1" V 2195 1950 50  0000 C CNN
F 1 "32.768MHz" V 2286 1950 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 2475 2000 50  0001 C CNN
F 3 "~" H 2475 2000 50  0001 C CNN
	1    2500 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5EB1268B
P 3600 5600
F 0 "#PWR0113" H 3600 5350 50  0001 C CNN
F 1 "GND" H 3605 5427 50  0000 C CNN
F 2 "" H 3600 5600 50  0001 C CNN
F 3 "" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EB13616
P 2050 2000
F 0 "#PWR0114" H 2050 1750 50  0001 C CNN
F 1 "GND" H 2055 1827 50  0000 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2000 2300 2000
Wire Wire Line
	2600 1900 2700 1900
Wire Wire Line
	2600 2100 2900 2100
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
Text GLabel 5750 5300 2    50   Input ~ 0
Z_DIR
Text GLabel 5750 4500 2    50   Input ~ 0
Z_STEP
Text GLabel 5750 4400 2    50   Input ~ 0
Z_EN
Text GLabel 5550 4150 0    50   Input ~ 0
THERM1_SIG
Text GLabel 5550 4250 0    50   Input ~ 0
THERM2_SIG
Text GLabel 5550 4050 0    50   Input ~ 0
VAC1_SIG
Text GLabel 5750 6900 2    50   Input ~ 0
Y_LIMIT
Text GLabel 5550 5950 0    50   Input ~ 0
MOSFET4_EN
Text GLabel 5750 3600 2    50   Input ~ 0
MOSFET5_EN
Text GLabel 5550 5650 0    50   Input ~ 0
MOSFET1_EN
Text GLabel 5550 5750 0    50   Input ~ 0
MOSFET2_EN
Text GLabel 5550 6750 0    50   Input ~ 0
SERVO1_SIG
Text GLabel 5550 6350 0    50   Input ~ 0
Y_DIR
Text GLabel 5750 4100 2    50   Input ~ 0
Y_STEP
Text GLabel 5550 3750 0    50   Input ~ 0
ANALOG2
Text GLabel 5550 3850 0    50   Input ~ 0
ANALOG1
Text GLabel 5550 3950 0    50   Input ~ 0
VAC2_SIG
Text GLabel 5750 4200 2    50   Input ~ 0
Y_EN
Text GLabel 5550 2850 0    50   Input ~ 0
X_DIR
Text GLabel 5550 2750 0    50   Input ~ 0
X_STEP
Text GLabel 5750 7000 2    50   Input ~ 0
X_LIMIT
Text GLabel 5550 3050 0    50   Input ~ 0
C_STEP
Text GLabel 5750 6200 2    50   Input ~ 0
SERVO2_SIG
Text GLabel 5750 6000 2    50   Input ~ 0
RX
Text GLabel 5750 5900 2    50   Input ~ 0
TX
Text GLabel 5550 2650 0    50   Input ~ 0
X_EN
Text GLabel 5750 6800 2    50   Input ~ 0
Z_LIMIT
Text GLabel 5750 5100 2    50   Input ~ 0
SDA
Text GLabel 5750 5000 2    50   Input ~ 0
SCK
Text GLabel 5550 3250 0    50   Input ~ 0
P_EN
Text GLabel 5750 2600 2    50   Input ~ 0
DOWNWARDS_LIGHT_SIG
Text GLabel 5750 2700 2    50   Input ~ 0
UPWARDS_LIGHT_SIG
Text GLabel 5750 2500 2    50   Input ~ 0
RELAY1_EN
Text GLabel 5750 5200 2    50   Input ~ 0
P_DIR
Text GLabel 5550 3150 0    50   Input ~ 0
C_DIR
Text GLabel 5550 3350 0    50   Input ~ 0
P_STEP
Text GLabel 5550 2950 0    50   Input ~ 0
C_EN
Text GLabel 5750 3700 2    50   Input ~ 0
MOSFET6_EN
Text GLabel 5550 5850 0    50   Input ~ 0
MOSFET3_EN
Text GLabel 5750 3500 2    50   Input ~ 0
MISO
Text GLabel 5750 3400 2    50   Input ~ 0
MOSI
Text GLabel 5750 3300 2    50   Input ~ 0
SCL
Text GLabel 5750 4300 2    50   Input ~ 0
R_DIR
Text GLabel 5750 5700 2    50   Input ~ 0
R_STEP
Text GLabel 5550 6250 0    50   Input ~ 0
R_EN
Text GLabel 6900 2650 2    50   Input ~ 0
DTR
Text GLabel 6900 2250 2    50   Input ~ 0
CTS
$Comp
L Device:C_Small C24
U 1 1 5ECD109A
P 3050 1450
F 0 "C24" H 3142 1496 50  0000 L CNN
F 1 "1uF" H 3142 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3050 1450 50  0001 C CNN
F 3 "~" H 3050 1450 50  0001 C CNN
	1    3050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0241
U 1 1 5ECD1C78
P 3050 1550
F 0 "#PWR0241" H 3050 1300 50  0001 C CNN
F 1 "GND" H 3055 1377 50  0000 C CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
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
P 3500 1550
F 0 "#PWR?" H 3500 1400 50  0001 C CNN
F 1 "+3V3" H 3515 1723 50  0000 C CNN
F 2 "" H 3500 1550 50  0001 C CNN
F 3 "" H 3500 1550 50  0001 C CNN
	1    3500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1050 1150 1050
Text GLabel 2900 5300 0    50   Input ~ 0
RESET
Text GLabel 1750 3000 2    50   Input ~ 0
RESET
Wire Wire Line
	3600 5600 3600 5500
Wire Wire Line
	3700 5500 3700 5600
Wire Wire Line
	3700 5600 3600 5600
Connection ~ 3600 5600
Wire Wire Line
	3500 1700 3500 1600
Wire Wire Line
	3600 1700 3600 1600
Wire Wire Line
	3600 1600 3500 1600
Connection ~ 3500 1600
Wire Wire Line
	3500 1600 3500 1550
Wire Wire Line
	3700 1700 3700 1600
Wire Wire Line
	3700 1600 3600 1600
Connection ~ 3600 1600
Wire Wire Line
	3900 1700 3900 1600
Wire Wire Line
	3900 1600 3700 1600
Connection ~ 3700 1600
Wire Wire Line
	3300 1700 3300 1200
Wire Wire Line
	3300 1200 3050 1200
Wire Wire Line
	3050 1200 3050 1350
Wire Wire Line
	2900 2000 2700 2000
Wire Wire Line
	2700 2000 2700 1900
Text GLabel 1750 3200 2    50   Input ~ 0
SWCLK
Text GLabel 1750 3300 2    50   Input ~ 0
SWDIO
Text GLabel 2900 5000 0    50   Input ~ 0
SWCLK
Text GLabel 2900 5100 0    50   Input ~ 0
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
Text GLabel 2900 4500 0    50   Input ~ 0
uC_D+
Text GLabel 2900 4400 0    50   Input ~ 0
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
Text GLabel 2900 2300 0    50   Input ~ 0
AREF
Text GLabel 1300 1550 2    50   Input ~ 0
AREF
Wire Wire Line
	1300 1550 1300 1700
$Comp
L MCU_Microchip_SAMD:ATSAMD21J15A-A U?
U 1 1 5EEFF72F
P 3600 3600
F 0 "U?" H 3600 3450 50  0000 C CNN
F 1 "ATSAMD21J15A-A" H 3600 3600 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 4550 1750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 3600 4600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
