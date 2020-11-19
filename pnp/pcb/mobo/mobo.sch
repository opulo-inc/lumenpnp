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
L power:GND #PWR0113
U 1 1 5EB1268B
P 3750 7300
F 0 "#PWR0113" H 3750 7050 50  0001 C CNN
F 1 "GND" H 3755 7127 50  0000 C CNN
F 2 "" H 3750 7300 50  0001 C CNN
F 3 "" H 3750 7300 50  0001 C CNN
	1    3750 7300
	1    0    0    -1  
$EndComp
$Sheet
S 9200 4100 1750 550 
U 5EB15D5B
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Comp
L Switch:SW_Push SW2
U 1 1 5EC6F1EA
P 1800 1250
F 0 "SW2" H 1800 1535 50  0000 C CNN
F 1 "RESET" H 1800 1444 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 1800 1450 50  0001 C CNN
F 3 "" H 1800 1450 50  0001 C CNN
	1    1800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0259
U 1 1 5EEA8D23
P 2000 1450
F 0 "#PWR0259" H 2000 1200 50  0001 C CNN
F 1 "GND" H 2005 1277 50  0000 C CNN
F 2 "" H 2000 1450 50  0001 C CNN
F 3 "" H 2000 1450 50  0001 C CNN
	1    2000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1250 2000 1450
Text GLabel 1550 1250 0    50   Input ~ 0
RESET
$Comp
L Mechanical:MountingHole H1
U 1 1 5EFCBCC9
P 9350 5400
F 0 "H1" H 9450 5446 50  0000 L CNN
F 1 "MountingHole" H 9450 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9350 5400 50  0001 C CNN
F 3 "~" H 9350 5400 50  0001 C CNN
	1    9350 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EFCC681
P 9350 5650
F 0 "H2" H 9450 5696 50  0000 L CNN
F 1 "MountingHole" H 9450 5605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9350 5650 50  0001 C CNN
F 3 "~" H 9350 5650 50  0001 C CNN
	1    9350 5650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EFCCB1E
P 10150 5400
F 0 "H3" H 10250 5446 50  0000 L CNN
F 1 "MountingHole" H 10250 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10150 5400 50  0001 C CNN
F 3 "~" H 10150 5400 50  0001 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EFCCE23
P 10150 5650
F 0 "H4" H 10250 5696 50  0000 L CNN
F 1 "MountingHole" H 10250 5605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10150 5650 50  0001 C CNN
F 3 "~" H 10150 5650 50  0001 C CNN
	1    10150 5650
	1    0    0    -1  
$EndComp
Text Notes 7000 6650 0    50   ~ 0
Therm3 -> VAC1\n
Text GLabel 3050 4100 0    50   Input ~ 0
Z_DIR
Text GLabel 3050 4200 0    50   Input ~ 0
Z_STEP
Text GLabel 4850 6700 2    50   Input ~ 0
Z_EN
Text GLabel 4850 5400 2    50   Input ~ 0
VAC2_SIG
Text GLabel 3050 6700 0    50   Input ~ 0
MOSFET4_EN
Text GLabel 4850 6000 2    50   Input ~ 0
MOSFET1_EN
Text GLabel 3050 6900 0    50   Input ~ 0
MOSFET2_EN
Text GLabel 3050 5000 0    50   Input ~ 0
SERVO1_SIG
Text GLabel 4850 6600 2    50   Input ~ 0
Y_DIR
Text GLabel 3050 5400 0    50   Input ~ 0
Y_STEP
Text GLabel 4850 5700 2    50   Input ~ 0
ANALOG2
Text GLabel 4850 5600 2    50   Input ~ 0
ANALOG1
Text GLabel 4850 5500 2    50   Input ~ 0
VAC1_SIG
Text GLabel 3050 5600 0    50   Input ~ 0
Y_EN
Text GLabel 3050 6100 0    50   Input ~ 0
X_DIR
Text GLabel 4850 4000 2    50   Input ~ 0
X_STEP
Text GLabel 3050 5800 0    50   Input ~ 0
C_STEP
Text GLabel 3050 5100 0    50   Input ~ 0
SERVO2_SIG
Text GLabel 4850 4200 2    50   Input ~ 0
X_EN
Text GLabel 4850 4800 2    50   Input ~ 0
SDA
Text GLabel 4850 4700 2    50   Input ~ 0
SCL
Text GLabel 4850 4600 2    50   Input ~ 0
P_EN
Text GLabel 3050 4800 0    50   Input ~ 0
DOWNWARDS_LIGHT_SIG
Text GLabel 3050 4900 0    50   Input ~ 0
UPWARDS_LIGHT_SIG
Text GLabel 4850 4300 2    50   Input ~ 0
P_DIR
Text GLabel 3050 5700 0    50   Input ~ 0
C_DIR
Text GLabel 4850 4400 2    50   Input ~ 0
P_STEP
Text GLabel 3050 6000 0    50   Input ~ 0
C_EN
Text GLabel 3050 6800 0    50   Input ~ 0
MOSFET3_EN
Text GLabel 4850 2500 2    50   Input ~ 0
SCK
Text GLabel 3050 3700 0    50   Input ~ 0
R_DIR
Text GLabel 3050 3800 0    50   Input ~ 0
R_STEP
Text GLabel 3050 4000 0    50   Input ~ 0
R_EN
$Comp
L mobo-rescue:Conn_ARM_JTAG_SWD_10-Connector J5
U 1 1 5EEECA88
P 7600 3650
F 0 "J5" H 7157 3696 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 8550 4200 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 7650 3100 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 7250 2400 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5EEF09A3
P 3750 1550
F 0 "#PWR0114" H 3750 1400 50  0001 C CNN
F 1 "+3V3" H 3765 1723 50  0000 C CNN
F 2 "" H 3750 1550 50  0001 C CNN
F 3 "" H 3750 1550 50  0001 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1250 1600 1250
Text GLabel 3050 2000 0    50   Input ~ 0
RESET
Text GLabel 8100 3350 2    50   Input ~ 0
RESET
Wire Wire Line
	3750 7300 3750 7200
Wire Wire Line
	3850 7200 3850 7300
Wire Wire Line
	3850 7300 3750 7300
Wire Wire Line
	3750 1700 3750 1600
Wire Wire Line
	3850 1700 3850 1600
Wire Wire Line
	3850 1600 3750 1600
Connection ~ 3750 1600
Wire Wire Line
	3750 1600 3750 1550
Wire Wire Line
	3950 1700 3950 1600
Wire Wire Line
	3950 1600 3850 1600
Connection ~ 3850 1600
Wire Wire Line
	4150 1700 4150 1600
Wire Wire Line
	4150 1600 4050 1600
Connection ~ 3950 1600
Text GLabel 8100 3550 2    50   Input ~ 0
SWCLK
Text GLabel 8100 3650 2    50   Input ~ 0
SWDIO
Text GLabel 4850 3400 2    50   Input ~ 0
SWCLK
Text GLabel 4850 3300 2    50   Input ~ 0
SWDIO
$Comp
L power:+3V3 #PWR0115
U 1 1 5EF002D9
P 7600 3050
F 0 "#PWR0115" H 7600 2900 50  0001 C CNN
F 1 "+3V3" H 7615 3223 50  0000 C CNN
F 2 "" H 7600 3050 50  0001 C CNN
F 3 "" H 7600 3050 50  0001 C CNN
	1    7600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EF008CB
P 7500 4350
F 0 "#PWR0116" H 7500 4100 50  0001 C CNN
F 1 "GND" H 7505 4177 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4350 7500 4300
Wire Wire Line
	7500 4300 7600 4300
Wire Wire Line
	7600 4300 7600 4250
Connection ~ 7500 4300
Wire Wire Line
	7500 4300 7500 4250
Text GLabel 4850 3200 2    50   Input ~ 0
uC_D+
Text GLabel 4850 3100 2    50   Input ~ 0
uC_D-
$Comp
L power:+3V3 #PWR0117
U 1 1 5EF028FA
P 2975 675
F 0 "#PWR0117" H 2975 525 50  0001 C CNN
F 1 "+3V3" H 2990 848 50  0000 C CNN
F 2 "" H 2975 675 50  0001 C CNN
F 3 "" H 2975 675 50  0001 C CNN
	1    2975 675 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EF03055
P 2975 1075
F 0 "#PWR0118" H 2975 825 50  0001 C CNN
F 1 "GND" H 2980 902 50  0000 C CNN
F 2 "" H 2975 1075 50  0001 C CNN
F 3 "" H 2975 1075 50  0001 C CNN
	1    2975 1075
	1    0    0    -1  
$EndComp
Connection ~ 3750 7300
Wire Wire Line
	4050 1700 4050 1600
Connection ~ 4050 1600
Wire Wire Line
	4050 1600 3950 1600
$Comp
L MCU_ST_STM32F4:STM32F407VETx U1
U 1 1 5EF214E8
P 3950 4400
F 0 "U1" H 3950 4200 50  0000 C CNN
F 1 "STM32F407VETx" H 3950 4400 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 3250 1800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 3950 4400 50  0001 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7300 3950 7300
Wire Wire Line
	3950 7300 3950 7200
Connection ~ 3850 7300
Wire Wire Line
	3950 7300 4050 7300
Wire Wire Line
	4050 7300 4050 7200
Connection ~ 3950 7300
Wire Wire Line
	4050 7300 4150 7300
Wire Wire Line
	4150 7300 4150 7200
Connection ~ 4050 7300
$Comp
L Device:C_Small C16
U 1 1 5F0CEC3B
P 1600 1350
F 0 "C16" H 1350 1350 50  0000 L CNN
F 1 "0.1uF" H 1300 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1600 1350 50  0001 C CNN
F 3 "~" H 1600 1350 50  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F0CFA67
P 1600 1450
F 0 "#PWR0120" H 1600 1200 50  0001 C CNN
F 1 "GND" H 1605 1277 50  0000 C CNN
F 2 "" H 1600 1450 50  0001 C CNN
F 3 "" H 1600 1450 50  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5F0D3862
P 2450 2500
F 0 "C17" H 2500 2550 50  0000 L CNN
F 1 "2.2uF" H 2450 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 2500 50  0001 C CNN
F 3 "~" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5F0D3CCF
P 2700 2600
F 0 "C21" H 2750 2650 50  0000 L CNN
F 1 "2.2uF" H 2700 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2700 2600 50  0001 C CNN
F 3 "~" H 2700 2600 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1600 4250 1600
Wire Wire Line
	4250 1600 4250 1700
Connection ~ 4150 1600
Wire Wire Line
	4250 1600 4350 1600
Wire Wire Line
	4350 1600 4350 1700
Connection ~ 4250 1600
Wire Wire Line
	2450 2400 3050 2400
Wire Wire Line
	2700 2500 3050 2500
$Comp
L power:GND #PWR0122
U 1 1 5F0D9ED5
P 2700 2800
F 0 "#PWR0122" H 2700 2550 50  0001 C CNN
F 1 "GND" H 2705 2627 50  0000 C CNN
F 2 "" H 2700 2800 50  0001 C CNN
F 3 "" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2800 2700 2750
Wire Wire Line
	2450 2600 2450 2750
Wire Wire Line
	2450 2750 2700 2750
Connection ~ 2700 2750
Wire Wire Line
	2700 2750 2700 2700
$Comp
L Device:C_Small C15
U 1 1 5F0F0EE5
P 2350 3800
F 0 "C15" H 2442 3846 50  0000 L CNN
F 1 "10pF" H 2442 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 3800 50  0001 C CNN
F 3 "~" H 2350 3800 50  0001 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5F10974E
P 1950 3800
F 0 "C14" H 1650 3850 50  0000 L CNN
F 1 "10pF" H 1650 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 3800 50  0001 C CNN
F 3 "~" H 1950 3800 50  0001 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3700 1950 3600
Wire Wire Line
	1950 3600 2050 3600
Wire Wire Line
	2250 3600 2350 3600
Wire Wire Line
	2350 3600 2350 3700
Wire Wire Line
	2350 3500 2350 3600
Connection ~ 2350 3600
Wire Wire Line
	1950 3400 1950 3600
Connection ~ 1950 3600
$Comp
L power:GND #PWR0126
U 1 1 5F111B2A
P 1950 3900
F 0 "#PWR0126" H 1950 3650 50  0001 C CNN
F 1 "GND" H 1955 3727 50  0000 C CNN
F 2 "" H 1950 3900 50  0001 C CNN
F 3 "" H 1950 3900 50  0001 C CNN
	1    1950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F112138
P 2350 3900
F 0 "#PWR0127" H 2350 3650 50  0001 C CNN
F 1 "GND" H 2355 3727 50  0000 C CNN
F 2 "" H 2350 3900 50  0001 C CNN
F 3 "" H 2350 3900 50  0001 C CNN
	1    2350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 5F115D16
P 3100 2850
F 0 "#PWR0128" H 3100 2700 50  0001 C CNN
F 1 "+3V3" H 3115 3023 50  0000 C CNN
F 2 "" H 3100 2850 50  0001 C CNN
F 3 "" H 3100 2850 50  0001 C CNN
	1    3100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3050 2850
Wire Wire Line
	3050 2850 3100 2850
Text GLabel 3050 6200 0    50   Input ~ 0
485_1_RXI
Text GLabel 3050 6300 0    50   Input ~ 0
485_1_TXO
Text GLabel 3050 6600 0    50   Input ~ 0
485_1_RTS
Text GLabel 4850 2200 2    50   Input ~ 0
485_2_RXI
Text GLabel 4850 2300 2    50   Input ~ 0
485_2_TXO
Text GLabel 4850 2100 2    50   Input ~ 0
485_2_RTS
Text GLabel 4850 2900 2    50   Input ~ 0
485_3_RXI
Text GLabel 4850 3000 2    50   Input ~ 0
485_3_TXO
Text GLabel 4850 2800 2    50   Input ~ 0
485_3_RTS
$Comp
L Device:R_Small R1
U 1 1 5F1837F8
P 7225 2000
F 0 "R1" H 7284 2046 50  0000 L CNN
F 1 "10K" H 7284 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7225 2000 50  0001 C CNN
F 3 "~" H 7225 2000 50  0001 C CNN
	1    7225 2000
	1    0    0    -1  
$EndComp
Text GLabel 3050 2200 0    50   Input ~ 0
BOOT0
Text GLabel 8050 1450 2    50   Input ~ 0
BOOT0
Text GLabel 4850 3900 2    50   Input ~ 0
BOOT1
Text GLabel 7300 2225 2    50   Input ~ 0
BOOT1
$Comp
L power:+3V3 #PWR0103
U 1 1 5F186319
P 7200 1300
F 0 "#PWR0103" H 7200 1150 50  0001 C CNN
F 1 "+3V3" H 7215 1473 50  0000 C CNN
F 2 "" H 7200 1300 50  0001 C CNN
F 3 "" H 7200 1300 50  0001 C CNN
	1    7200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7200 1450
Wire Wire Line
	7200 1450 7350 1450
$Comp
L Device:R_Small R13
U 1 1 5F18E7E3
P 8000 1800
F 0 "R13" H 8059 1846 50  0000 L CNN
F 1 "10K" H 8059 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F19074C
P 8000 1950
F 0 "#PWR0107" H 8000 1700 50  0001 C CNN
F 1 "GND" H 8005 1777 50  0000 C CNN
F 2 "" H 8000 1950 50  0001 C CNN
F 3 "" H 8000 1950 50  0001 C CNN
	1    8000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1950 8000 1900
$Comp
L mobo-rescue:Crystal_GND24_Small-Device Y1
U 1 1 5F20EB5B
P 2150 3600
F 0 "Y1" H 2000 3550 50  0000 L CNN
F 1 "8MHz" H 2050 3850 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 2150 3600 50  0001 C CNN
F 3 "~" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F2115D3
P 2150 3800
F 0 "#PWR0119" H 2150 3550 50  0001 C CNN
F 1 "GND" H 2155 3627 50  0000 C CNN
F 2 "" H 2150 3800 50  0001 C CNN
F 3 "" H 2150 3800 50  0001 C CNN
	1    2150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3725 2150 3750
Wire Wire Line
	2150 3475 2150 3450
Wire Wire Line
	2150 3450 2275 3450
Wire Wire Line
	2275 3450 2275 3750
Wire Wire Line
	2275 3750 2150 3750
Connection ~ 2150 3750
Wire Wire Line
	2150 3750 2150 3800
Text GLabel 4850 5800 2    50   Input ~ 0
AUX1-A2
Text GLabel 4850 5900 2    50   Input ~ 0
AUX2-A2
Text GLabel 4850 3800 2    50   Input ~ 0
AUX2-A1
Text GLabel 4850 3700 2    50   Input ~ 0
AUX1-A1
$Comp
L Switch:SW_Push SW1
U 1 1 5F7B4885
P 7550 1450
F 0 "SW1" H 7550 1735 50  0000 C CNN
F 1 "BOOT0" H 7550 1644 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 7550 1650 50  0001 C CNN
F 3 "" H 7550 1650 50  0001 C CNN
	1    7550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 5F7BF3A9
P 3350 875
F 0 "C23" H 3442 921 50  0000 L CNN
F 1 "0.1uF" H 3442 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3350 875 50  0001 C CNN
F 3 "~" H 3350 875 50  0001 C CNN
	1    3350 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5F7C0097
P 3750 875
F 0 "C24" H 3842 921 50  0000 L CNN
F 1 "0.1uF" H 3842 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3750 875 50  0001 C CNN
F 3 "~" H 3750 875 50  0001 C CNN
	1    3750 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5F7C030A
P 4125 875
F 0 "C25" H 4217 921 50  0000 L CNN
F 1 "0.1uF" H 4217 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4125 875 50  0001 C CNN
F 3 "~" H 4125 875 50  0001 C CNN
	1    4125 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C32
U 1 1 5F7C2239
P 4500 875
F 0 "C32" H 4592 921 50  0000 L CNN
F 1 "0.1uF" H 4592 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4500 875 50  0001 C CNN
F 3 "~" H 4500 875 50  0001 C CNN
	1    4500 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C33
U 1 1 5F7C2422
P 4875 875
F 0 "C33" H 4967 921 50  0000 L CNN
F 1 "0.1uF" H 4967 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4875 875 50  0001 C CNN
F 3 "~" H 4875 875 50  0001 C CNN
	1    4875 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C35
U 1 1 5F7C2B41
P 5275 875
F 0 "C35" H 5367 921 50  0000 L CNN
F 1 "0.1uF" H 5367 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5275 875 50  0001 C CNN
F 3 "~" H 5275 875 50  0001 C CNN
	1    5275 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1700 3650 1600
Wire Wire Line
	3650 1600 3750 1600
$Comp
L Device:C_Small C34
U 1 1 5F7C4CF7
P 5100 1450
F 0 "C34" H 5192 1496 50  0000 L CNN
F 1 "0.1uF" H 5192 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5100 1450 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C36
U 1 1 5F7C58EB
P 5550 1450
F 0 "C36" H 5642 1496 50  0000 L CNN
F 1 "1uF" H 5642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5550 1450 50  0001 C CNN
F 3 "~" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5F7C7A16
P 4550 1300
F 0 "#PWR0105" H 4550 1150 50  0001 C CNN
F 1 "+3V3" H 4565 1473 50  0000 C CNN
F 2 "" H 4550 1300 50  0001 C CNN
F 3 "" H 4550 1300 50  0001 C CNN
	1    4550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1350 5550 1350
Connection ~ 5100 1350
Wire Wire Line
	5100 1550 5550 1550
$Comp
L power:GND #PWR0121
U 1 1 5F7CC482
P 5100 1550
F 0 "#PWR0121" H 5100 1300 50  0001 C CNN
F 1 "GND" H 5105 1377 50  0000 C CNN
F 2 "" H 5100 1550 50  0001 C CNN
F 3 "" H 5100 1550 50  0001 C CNN
	1    5100 1550
	1    0    0    -1  
$EndComp
Connection ~ 5100 1550
Text Notes 5200 1675 0    50   ~ 0
Analog Decoupling
$Comp
L Device:C_Small C22
U 1 1 5F7CDA9E
P 2975 875
F 0 "C22" H 3067 921 50  0000 L CNN
F 1 "4.7uF" H 3067 830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2975 875 50  0001 C CNN
F 3 "~" H 2975 875 50  0001 C CNN
	1    2975 875 
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5F7CFA82
P 4850 1350
F 0 "FB1" V 4750 1250 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4750 1825 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 1350 50  0001 C CNN
F 3 "~" H 4850 1350 50  0001 C CNN
	1    4850 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1300 4550 1350
Wire Wire Line
	4550 1350 4750 1350
Wire Wire Line
	4950 1350 5100 1350
Wire Wire Line
	2975 675  2975 775 
Wire Wire Line
	2975 775  3350 775 
Connection ~ 2975 775 
Wire Wire Line
	3350 775  3750 775 
Connection ~ 3350 775 
Wire Wire Line
	3750 775  4125 775 
Connection ~ 3750 775 
Wire Wire Line
	4125 775  4500 775 
Connection ~ 4125 775 
Wire Wire Line
	4500 775  4875 775 
Connection ~ 4500 775 
Wire Wire Line
	2975 975  2975 1075
Connection ~ 4875 775 
Wire Wire Line
	4875 775  5275 775 
Wire Wire Line
	2975 975  3350 975 
Connection ~ 2975 975 
Wire Wire Line
	3350 975  3750 975 
Connection ~ 3350 975 
Wire Wire Line
	3750 975  4125 975 
Connection ~ 3750 975 
Wire Wire Line
	4125 975  4500 975 
Connection ~ 4125 975 
Wire Wire Line
	4500 975  4875 975 
Connection ~ 4500 975 
Wire Wire Line
	4875 975  5275 975 
Connection ~ 4875 975 
$Comp
L power:+3V3 #PWR0124
U 1 1 5F8341E5
P 7225 1800
F 0 "#PWR0124" H 7225 1650 50  0001 C CNN
F 1 "+3V3" H 7240 1973 50  0000 C CNN
F 2 "" H 7225 1800 50  0001 C CNN
F 3 "" H 7225 1800 50  0001 C CNN
	1    7225 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 1800 7225 1900
Wire Wire Line
	7225 2100 7225 2225
Wire Wire Line
	7225 2225 7300 2225
Text GLabel 4850 2700 2    50   Input ~ 0
MOSI
Text GLabel 4850 2600 2    50   Input ~ 0
MISO
Wire Wire Line
	7750 1450 8000 1450
Wire Wire Line
	8000 1700 8000 1450
Connection ~ 8000 1450
Wire Wire Line
	8000 1450 8050 1450
Text Notes 3050 700  0    50   ~ 0
Digital Decoupling
Wire Wire Line
	3050 3500 2350 3500
Wire Wire Line
	3050 3400 1950 3400
Text GLabel 4850 4100 2    50   Input ~ 0
X_CS
Text GLabel 3050 5500 0    50   Input ~ 0
Y_CS
Text GLabel 3050 4300 0    50   Input ~ 0
Z_CS
Text GLabel 3050 3900 0    50   Input ~ 0
R_CS
Text GLabel 4850 4500 2    50   Input ~ 0
P_CS
Text GLabel 3050 5900 0    50   Input ~ 0
C_CS
Connection ~ 1600 1250
Text GLabel 4850 2000 2    50   Input ~ 0
LED
Text GLabel 4850 6100 2    50   Input ~ 0
AUX2-D1
Text GLabel 4850 6200 2    50   Input ~ 0
AUX1-D1
Text GLabel 3050 4700 0    50   Input ~ 0
Z_LIMIT
Text GLabel 3050 4600 0    50   Input ~ 0
Y_LIMIT
Text GLabel 4850 5100 2    50   Input ~ 0
P_LIMIT
Text GLabel 4850 5000 2    50   Input ~ 0
C_LIMIT
Text GLabel 4850 5200 2    50   Input ~ 0
R_LIMIT
Text GLabel 3050 4500 0    50   Input ~ 0
X_LIMIT
$Comp
L Device:R_Small R38
U 1 1 5F986492
P 5950 2600
F 0 "R38" H 6009 2646 50  0000 L CNN
F 1 "4.7K" H 6009 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 2600 50  0001 C CNN
F 3 "~" H 5950 2600 50  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0209
U 1 1 5F9866C6
P 5950 2400
F 0 "#PWR0209" H 5950 2250 50  0001 C CNN
F 1 "+3V3" H 5965 2573 50  0000 C CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
Text GLabel 6050 2800 2    50   Input ~ 0
SCL
Text GLabel 6600 2800 2    50   Input ~ 0
SDA
$Comp
L Device:R_Small R39
U 1 1 5F9886F0
P 6500 2600
F 0 "R39" H 6559 2646 50  0000 L CNN
F 1 "4.7K" H 6559 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6500 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0223
U 1 1 5F98889B
P 6500 2400
F 0 "#PWR0223" H 6500 2250 50  0001 C CNN
F 1 "+3V3" H 6515 2573 50  0000 C CNN
F 2 "" H 6500 2400 50  0001 C CNN
F 3 "" H 6500 2400 50  0001 C CNN
	1    6500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2400 5950 2500
Wire Wire Line
	5950 2700 5950 2800
Wire Wire Line
	5950 2800 6050 2800
Wire Wire Line
	6500 2400 6500 2500
Wire Wire Line
	6500 2700 6500 2800
Wire Wire Line
	6500 2800 6600 2800
$EndSCHEMATC
