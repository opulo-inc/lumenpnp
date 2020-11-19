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
L Driver_Motor:Pololu_Breakout_DRV8825 A3
U 1 1 5E3F7781
P 2300 6350
F 0 "A3" H 2300 6400 50  0000 C CNN
F 1 "Z_MOTOR_DRIVER" H 2650 6900 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2500 5550 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2400 6050 50  0001 C CNN
	1    2300 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E403DFE
P 2400 7250
F 0 "#PWR0101" H 2400 7000 50  0001 C CNN
F 1 "GND" H 2405 7077 50  0000 C CNN
F 2 "" H 2400 7250 50  0001 C CNN
F 3 "" H 2400 7250 50  0001 C CNN
	1    2400 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7250 2400 7150
Wire Wire Line
	2400 7150 2300 7150
Connection ~ 2400 7150
$Comp
L power:+12V #PWR0102
U 1 1 5E406339
P 2300 5750
F 0 "#PWR0102" H 2300 5600 50  0001 C CNN
F 1 "+12V" H 2250 5900 50  0000 C CNN
F 2 "" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0001 C CNN
	1    2300 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E40C860
P 3200 6500
F 0 "J3" H 3172 6382 50  0000 R CNN
F 1 "Z_MOTOR" H 3172 6473 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 3200 6500 50  0001 C CNN
F 3 "~" H 3200 6500 50  0001 C CNN
	1    3200 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2325 3050 2325 2950
Wire Wire Line
	2325 2950 2225 2950
$Comp
L power:+12V #PWR0104
U 1 1 5E418FAD
P 2225 1550
F 0 "#PWR0104" H 2225 1400 50  0001 C CNN
F 1 "+12V" H 2175 1700 50  0000 C CNN
F 2 "" H 2225 1550 50  0001 C CNN
F 3 "" H 2225 1550 50  0001 C CNN
	1    2225 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E418FC1
P 3125 2300
F 0 "J1" H 3097 2182 50  0000 R CNN
F 1 "X_MOTOR" H 3097 2273 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 3125 2300 50  0001 C CNN
F 3 "~" H 3125 2300 50  0001 C CNN
	1    3125 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 5200 2050 5100
Wire Wire Line
	2050 5100 1950 5100
$Comp
L power:+12V #PWR0106
U 1 1 5E421DF1
P 1950 3700
F 0 "#PWR0106" H 1950 3550 50  0001 C CNN
F 1 "+12V" H 1900 3850 50  0000 C CNN
F 2 "" H 1950 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E427C6A
P 2050 5200
F 0 "#PWR0108" H 2050 4950 50  0001 C CNN
F 1 "GND" H 2055 5027 50  0000 C CNN
F 2 "" H 2050 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5E427FE4
P 2325 3050
F 0 "#PWR0109" H 2325 2800 50  0001 C CNN
F 1 "GND" H 2330 2877 50  0000 C CNN
F 2 "" H 2325 3050 50  0001 C CNN
F 3 "" H 2325 3050 50  0001 C CNN
	1    2325 3050
	1    0    0    -1  
$EndComp
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
L Driver_Motor:Pololu_Breakout_DRV8825 A6
U 1 1 5EB0D841
P 4875 6325
F 0 "A6" H 4875 6375 50  0000 C CNN
F 1 "C_MOTOR_DRIVER" H 5225 6875 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5075 5525 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4975 6025 50  0001 C CNN
	1    4875 6325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 5EB0D84B
P 4975 7225
F 0 "#PWR0198" H 4975 6975 50  0001 C CNN
F 1 "GND" H 4980 7052 50  0000 C CNN
F 2 "" H 4975 7225 50  0001 C CNN
F 3 "" H 4975 7225 50  0001 C CNN
	1    4975 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 7225 4975 7125
Wire Wire Line
	4975 7125 4875 7125
Connection ~ 4975 7125
$Comp
L power:+12V #PWR0199
U 1 1 5EB0D858
P 4875 5725
F 0 "#PWR0199" H 4875 5575 50  0001 C CNN
F 1 "+12V" H 4825 5875 50  0000 C CNN
F 2 "" H 4875 5725 50  0001 C CNN
F 3 "" H 4875 5725 50  0001 C CNN
	1    4875 5725
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J38
U 1 1 5EB0D86C
P 5775 6475
F 0 "J38" H 5747 6357 50  0000 R CNN
F 1 "C_MOTOR" H 5747 6448 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 5775 6475 50  0001 C CNN
F 3 "~" H 5775 6475 50  0001 C CNN
	1    5775 6475
	-1   0    0    1   
$EndComp
Wire Wire Line
	4975 3025 4975 2925
Wire Wire Line
	4975 2925 4875 2925
$Comp
L power:+12V #PWR0203
U 1 1 5EB0D8B4
P 4875 1525
F 0 "#PWR0203" H 4875 1375 50  0001 C CNN
F 1 "+12V" H 4825 1675 50  0000 C CNN
F 2 "" H 4875 1525 50  0001 C CNN
F 3 "" H 4875 1525 50  0001 C CNN
	1    4875 1525
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5EB0D8C8
P 5775 2275
F 0 "J4" H 5747 2157 50  0000 R CNN
F 1 "R_MOTOR" H 5747 2248 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 5775 2275 50  0001 C CNN
F 3 "~" H 5775 2275 50  0001 C CNN
	1    5775 2275
	-1   0    0    1   
$EndComp
Wire Wire Line
	4975 5175 4975 5075
Wire Wire Line
	4975 5075 4875 5075
$Comp
L power:+12V #PWR0205
U 1 1 5EB0D910
P 4875 3675
F 0 "#PWR0205" H 4875 3525 50  0001 C CNN
F 1 "+12V" H 4825 3825 50  0000 C CNN
F 2 "" H 4875 3675 50  0001 C CNN
F 3 "" H 4875 3675 50  0001 C CNN
	1    4875 3675
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J37
U 1 1 5EB0D924
P 5775 4425
F 0 "J37" H 5747 4307 50  0000 R CNN
F 1 "P_MOTOR" H 5747 4398 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 5775 4425 50  0001 C CNN
F 3 "~" H 5775 4425 50  0001 C CNN
	1    5775 4425
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 5EB0D95F
P 4975 5175
F 0 "#PWR0207" H 4975 4925 50  0001 C CNN
F 1 "GND" H 4980 5002 50  0000 C CNN
F 2 "" H 4975 5175 50  0001 C CNN
F 3 "" H 4975 5175 50  0001 C CNN
	1    4975 5175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 5EB0D969
P 4975 3025
F 0 "#PWR0208" H 4975 2775 50  0001 C CNN
F 1 "GND" H 4980 2852 50  0000 C CNN
F 2 "" H 4975 3025 50  0001 C CNN
F 3 "" H 4975 3025 50  0001 C CNN
	1    4975 3025
	1    0    0    -1  
$EndComp
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
Text GLabel 1825 2150 0    50   Input ~ 0
X_EN
Text GLabel 1825 2250 0    50   Input ~ 0
X_STEP
Text GLabel 1825 2350 0    50   Input ~ 0
X_DIR
Text GLabel 4475 2125 0    50   Input ~ 0
R_EN
Text GLabel 4475 2225 0    50   Input ~ 0
R_STEP
Text GLabel 4475 2325 0    50   Input ~ 0
R_DIR
Text GLabel 1550 4300 0    50   Input ~ 0
Y_EN
Text GLabel 1550 4400 0    50   Input ~ 0
Y_STEP
Text GLabel 1550 4500 0    50   Input ~ 0
Y_DIR
Text GLabel 4475 4275 0    50   Input ~ 0
P_EN
Text GLabel 4475 4375 0    50   Input ~ 0
P_STEP
Text GLabel 4475 4475 0    50   Input ~ 0
P_DIR
Text GLabel 1900 6350 0    50   Input ~ 0
Z_EN
Text GLabel 1900 6450 0    50   Input ~ 0
Z_STEP
Text GLabel 1900 6550 0    50   Input ~ 0
Z_DIR
Text GLabel 4475 6325 0    50   Input ~ 0
C_EN
Text GLabel 4475 6425 0    50   Input ~ 0
C_STEP
Text GLabel 4475 6525 0    50   Input ~ 0
C_DIR
Connection ~ 2325 2950
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A1
U 1 1 5E418FA0
P 2225 2150
F 0 "A1" H 2225 2200 50  0000 C CNN
F 1 "X_MOTOR_DRIVER" H 2575 2700 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2425 1350 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2325 1850 50  0001 C CNN
	1    2225 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 2350 2775 2350
Wire Wire Line
	2775 2350 2775 2200
Wire Wire Line
	2775 2200 2925 2200
Wire Wire Line
	2625 2450 2825 2450
Wire Wire Line
	2825 2450 2825 2100
Wire Wire Line
	2825 2100 2925 2100
Connection ~ 2050 5100
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A2
U 1 1 5E421DE4
P 1950 4300
F 0 "A2" H 1950 4350 50  0000 C CNN
F 1 "Y_MOTOR_DRIVER" H 2300 4850 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 2150 3500 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 2050 4000 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4350 2600 4300
Wire Wire Line
	2600 4450 2600 4400
Wire Wire Line
	2600 4550 2600 4500
$Comp
L power:+3V3 #PWR0112
U 1 1 5F2716D7
P 1225 1750
F 0 "#PWR0112" H 1225 1600 50  0001 C CNN
F 1 "+3V3" H 1240 1923 50  0000 C CNN
F 2 "" H 1225 1750 50  0001 C CNN
F 3 "" H 1225 1750 50  0001 C CNN
	1    1225 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0123
U 1 1 5F2723D6
P 1000 3900
F 0 "#PWR0123" H 1000 3750 50  0001 C CNN
F 1 "+3V3" H 1015 4073 50  0000 C CNN
F 2 "" H 1000 3900 50  0001 C CNN
F 3 "" H 1000 3900 50  0001 C CNN
	1    1000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0186
U 1 1 5F272746
P 3925 1725
F 0 "#PWR0186" H 3925 1575 50  0001 C CNN
F 1 "+3V3" H 3940 1898 50  0000 C CNN
F 2 "" H 3925 1725 50  0001 C CNN
F 3 "" H 3925 1725 50  0001 C CNN
	1    3925 1725
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0188
U 1 1 5F273300
P 3925 3875
F 0 "#PWR0188" H 3925 3725 50  0001 C CNN
F 1 "+3V3" H 3940 4048 50  0000 C CNN
F 2 "" H 3925 3875 50  0001 C CNN
F 3 "" H 3925 3875 50  0001 C CNN
	1    3925 3875
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0191
U 1 1 5F274047
P 1325 5950
F 0 "#PWR0191" H 1325 5800 50  0001 C CNN
F 1 "+3V3" H 1340 6123 50  0000 C CNN
F 2 "" H 1325 5950 50  0001 C CNN
F 3 "" H 1325 5950 50  0001 C CNN
	1    1325 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0193
U 1 1 5F274B04
P 3925 5925
F 0 "#PWR0193" H 3925 5775 50  0001 C CNN
F 1 "+3V3" H 3940 6098 50  0000 C CNN
F 2 "" H 3925 5925 50  0001 C CNN
F 3 "" H 3925 5925 50  0001 C CNN
	1    3925 5925
	1    0    0    -1  
$EndComp
Connection ~ 4975 2925
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A4
U 1 1 5EB0D8A7
P 4875 2125
F 0 "A4" H 4875 2175 50  0000 C CNN
F 1 "R_MOTOR_DRIVER" H 5225 2675 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5075 1325 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4975 1825 50  0001 C CNN
	1    4875 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 2150 2675 2150
Wire Wire Line
	2675 2150 2675 2400
Wire Wire Line
	2675 2400 2925 2400
Wire Wire Line
	2725 2050 2725 2300
Wire Wire Line
	2725 2300 2925 2300
Wire Wire Line
	2625 2050 2725 2050
Wire Wire Line
	2350 4500 2500 4500
Wire Wire Line
	2500 4500 2500 4350
Wire Wire Line
	2350 4600 2550 4600
Wire Wire Line
	2550 4600 2550 4250
Wire Wire Line
	2350 4300 2400 4300
Wire Wire Line
	2400 4300 2400 4550
Wire Wire Line
	2450 4200 2450 4450
Wire Wire Line
	2350 4200 2450 4200
Wire Wire Line
	2500 4350 2600 4350
Connection ~ 2600 4350
Wire Wire Line
	2600 4350 2650 4350
Wire Wire Line
	2450 4450 2600 4450
Connection ~ 2600 4450
Wire Wire Line
	2600 4450 2650 4450
Wire Wire Line
	2400 4550 2600 4550
Connection ~ 2600 4550
Wire Wire Line
	2600 4550 2650 4550
Wire Wire Line
	2700 6550 2850 6550
Wire Wire Line
	2850 6550 2850 6400
Wire Wire Line
	2850 6400 3000 6400
Wire Wire Line
	2700 6650 2900 6650
Wire Wire Line
	2900 6650 2900 6300
Wire Wire Line
	2900 6300 3000 6300
Wire Wire Line
	2700 6350 2750 6350
Wire Wire Line
	2750 6350 2750 6600
Wire Wire Line
	2750 6600 3000 6600
Wire Wire Line
	2800 6250 2800 6500
Wire Wire Line
	2800 6500 3000 6500
Wire Wire Line
	2700 6250 2800 6250
Wire Wire Line
	5275 6525 5425 6525
Wire Wire Line
	5425 6525 5425 6375
Wire Wire Line
	5425 6375 5575 6375
Wire Wire Line
	5275 6625 5475 6625
Wire Wire Line
	5475 6625 5475 6275
Wire Wire Line
	5475 6275 5575 6275
Wire Wire Line
	5275 6325 5325 6325
Wire Wire Line
	5325 6325 5325 6575
Wire Wire Line
	5325 6575 5575 6575
Wire Wire Line
	5375 6225 5375 6475
Wire Wire Line
	5375 6475 5575 6475
Wire Wire Line
	5275 6225 5375 6225
Connection ~ 4975 5075
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A5
U 1 1 5EB0D903
P 4875 4275
F 0 "A5" H 4875 4325 50  0000 C CNN
F 1 "P_MOTOR_DRIVER" H 5225 4825 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5075 3475 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4975 3975 50  0001 C CNN
	1    4875 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 4475 5425 4475
Wire Wire Line
	5425 4475 5425 4325
Wire Wire Line
	5425 4325 5575 4325
Wire Wire Line
	5275 4575 5475 4575
Wire Wire Line
	5475 4575 5475 4225
Wire Wire Line
	5475 4225 5575 4225
Wire Wire Line
	5275 4275 5325 4275
Wire Wire Line
	5325 4275 5325 4525
Wire Wire Line
	5325 4525 5575 4525
Wire Wire Line
	5375 4175 5375 4425
Wire Wire Line
	5375 4425 5575 4425
Wire Wire Line
	5275 4175 5375 4175
Wire Wire Line
	5275 2325 5425 2325
Wire Wire Line
	5425 2325 5425 2175
Wire Wire Line
	5425 2175 5575 2175
Wire Wire Line
	5275 2425 5475 2425
Wire Wire Line
	5475 2425 5475 2075
Wire Wire Line
	5475 2075 5575 2075
Wire Wire Line
	5275 2125 5325 2125
Wire Wire Line
	5325 2125 5325 2375
Wire Wire Line
	5325 2375 5575 2375
Wire Wire Line
	5375 2025 5375 2275
Wire Wire Line
	5375 2275 5575 2275
Wire Wire Line
	5275 2025 5375 2025
Text GLabel 1675 2550 0    50   Input ~ 0
X_MS0_MOSI
Wire Wire Line
	1675 2550 1825 2550
Text GLabel 1675 2650 0    50   Input ~ 0
X_MS1_SCK
Text GLabel 1675 2750 0    50   Input ~ 0
X_MS2_CS
Text GLabel 1825 1850 0    50   Input ~ 0
X_RST_MISO
Wire Wire Line
	1225 1750 1825 1750
Wire Wire Line
	1225 1950 1225 1750
Wire Wire Line
	1225 1950 1825 1950
Connection ~ 1225 1750
Wire Wire Line
	1675 2650 1825 2650
Wire Wire Line
	1675 2750 1825 2750
Text GLabel 1550 4000 0    50   Input ~ 0
Y_RST_MISO
Wire Wire Line
	1000 4100 1000 3900
Wire Wire Line
	1000 4100 1550 4100
Wire Wire Line
	1000 3900 1550 3900
Connection ~ 1000 3900
Text GLabel 1550 4700 0    50   Input ~ 0
Y_MS0_MOSI
Text GLabel 1550 4800 0    50   Input ~ 0
Y_MS1_SCK
Text GLabel 1550 4900 0    50   Input ~ 0
Y_MS2_CS
Wire Wire Line
	2600 4250 2650 4250
Wire Wire Line
	2550 4250 2600 4250
Connection ~ 2600 4250
Wire Wire Line
	2600 4250 2600 4200
Wire Wire Line
	3200 4500 3200 4550
Wire Wire Line
	2600 4500 3200 4500
Wire Wire Line
	3200 4400 3200 4450
Wire Wire Line
	2600 4400 3200 4400
Wire Wire Line
	3200 4300 3200 4350
Wire Wire Line
	2600 4300 3200 4300
Wire Wire Line
	3200 4200 3200 4250
Wire Wire Line
	2600 4200 3200 4200
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5E421E05
P 2850 4450
F 0 "J2" H 3075 4625 50  0000 R CNN
F 1 "Y_MOTOR1" H 2625 4150 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 2850 4450 50  0001 C CNN
F 3 "~" H 2850 4450 50  0001 C CNN
	1    2850 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J48
U 1 1 5ECBDE28
P 3000 4350
F 0 "J48" H 3175 4100 50  0000 R CNN
F 1 "Y_MOTOR2" H 2825 4550 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 3000 4350 50  0001 C CNN
F 3 "~" H 3000 4350 50  0001 C CNN
	1    3000 4350
	1    0    0    -1  
$EndComp
Text GLabel 1900 6050 0    50   Input ~ 0
Z_RST_MISO
Wire Wire Line
	1325 5950 1900 5950
Wire Wire Line
	1325 6150 1325 5950
Wire Wire Line
	1325 6150 1900 6150
Connection ~ 1325 5950
Text GLabel 1900 6750 0    50   Input ~ 0
Z_MS0_MOSI
Text GLabel 1900 6850 0    50   Input ~ 0
Z_MS1_SCK
Text GLabel 1900 6950 0    50   Input ~ 0
Z_MS2_CS
Text GLabel 4475 2525 0    50   Input ~ 0
R_MS0_MOSI
Text GLabel 4475 2625 0    50   Input ~ 0
R_MS1_SCK
Text GLabel 4475 2725 0    50   Input ~ 0
R_MS2_CS
Text GLabel 4475 1825 0    50   Input ~ 0
R_RST_MISO
Wire Wire Line
	3925 1925 3925 1725
Wire Wire Line
	3925 1925 4475 1925
Wire Wire Line
	3925 1725 4475 1725
Connection ~ 3925 1725
Text GLabel 4475 4675 0    50   Input ~ 0
P_MS0_MOSI
Text GLabel 4475 4775 0    50   Input ~ 0
P_MS1_SCK
Text GLabel 4475 4875 0    50   Input ~ 0
P_MS2_CS
Text GLabel 4475 3975 0    50   Input ~ 0
P_RST_MISO
Wire Wire Line
	3925 3875 4475 3875
Wire Wire Line
	3925 4075 3925 3875
Wire Wire Line
	3925 4075 4475 4075
Connection ~ 3925 3875
Text GLabel 4475 6725 0    50   Input ~ 0
C_MS0_MOSI
Text GLabel 4475 6825 0    50   Input ~ 0
C_MS1_SCK
Text GLabel 4475 6925 0    50   Input ~ 0
C_MS2_CS
Text GLabel 4475 6025 0    50   Input ~ 0
C_RST_MISO
Wire Wire Line
	3925 5925 4475 5925
Wire Wire Line
	3925 6125 3925 5925
Wire Wire Line
	3925 6125 4475 6125
Connection ~ 3925 5925
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5F9DB932
P 9900 1450
F 0 "JP1" H 10050 1500 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 9400 1500 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 1450 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 1750 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 2050 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 2350 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 2650 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 2950 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 3250 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 3550 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 3850 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 4150 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 4450 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9900 4750 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 1450 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 1750 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 2050 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 2350 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 2650 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 2950 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 3550 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 3850 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 4150 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 4450 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 4750 50  0001 C CNN
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7900 3250 50  0001 C CNN
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
$EndSCHEMATC
