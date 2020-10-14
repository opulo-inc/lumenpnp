EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x10_Female J2
U 1 1 5F87581F
P 5600 1750
F 0 "J2" V 5765 1680 50  0000 C CNN
F 1 "Conn_01x10_Female" V 5674 1680 50  0000 C CNN
F 2 "index:70AA-5" H 5600 1750 50  0001 C CNN
F 3 "~" H 5600 1750 50  0001 C CNN
	1    5600 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 1950 5200 2450
Wire Wire Line
	5300 1950 5300 2350
Wire Wire Line
	5400 1950 5400 2250
Wire Wire Line
	5500 1950 5500 2150
Wire Wire Line
	5600 1950 5600 2050
Wire Wire Line
	5600 2050 5700 2050
Wire Wire Line
	5700 2050 5700 1950
Connection ~ 5600 2050
Wire Wire Line
	5500 2150 5800 2150
Wire Wire Line
	5800 2150 5800 1950
Connection ~ 5500 2150
Wire Wire Line
	5400 2250 5900 2250
Wire Wire Line
	5900 2250 5900 1950
Connection ~ 5400 2250
Wire Wire Line
	5300 2350 6000 2350
Wire Wire Line
	6000 2350 6000 1950
Wire Wire Line
	5200 2450 6100 2450
Wire Wire Line
	6100 2450 6100 1950
Connection ~ 5200 2450
Wire Wire Line
	5200 2450 5200 2550
$Comp
L Device:R_Small R1
U 1 1 5F87EC9E
P 6600 2300
F 0 "R1" H 6659 2346 50  0000 L CNN
F 1 "ID_H" H 6659 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6600 2300 50  0001 C CNN
F 3 "~" H 6600 2300 50  0001 C CNN
	1    6600 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F87EF44
P 6600 2700
F 0 "R2" H 6659 2746 50  0000 L CNN
F 1 "ID_L" H 6659 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
Text GLabel 6700 2100 2    50   Input ~ 0
5V
Text GLabel 6000 2350 2    50   Input ~ 0
ID
Text GLabel 6100 2450 2    50   Input ~ 0
GND
Text GLabel 5800 2150 2    50   Input ~ 0
A
Text GLabel 5900 2250 2    50   Input ~ 0
B
Text GLabel 6700 2900 2    50   Input ~ 0
GND
Text GLabel 5700 2050 2    50   Input ~ 0
5V
Text GLabel 6700 2500 2    50   Input ~ 0
ID
Wire Wire Line
	6700 2100 6600 2100
Wire Wire Line
	6600 2100 6600 2200
Wire Wire Line
	6600 2400 6600 2500
Wire Wire Line
	6600 2800 6600 2900
Wire Wire Line
	6600 2900 6700 2900
Wire Wire Line
	6700 2500 6600 2500
Connection ~ 6600 2500
Wire Wire Line
	6600 2500 6600 2600
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5F882F66
P 5400 2950
F 0 "J1" V 5554 2662 50  0000 R CNN
F 1 "Conn_01x04_Male" V 5463 2662 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5400 2950 50  0001 C CNN
F 3 "~" H 5400 2950 50  0001 C CNN
	1    5400 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2550 5300 2550
Wire Wire Line
	5300 2550 5300 2750
Wire Wire Line
	5400 2250 5400 2750
Wire Wire Line
	5500 2150 5500 2750
Wire Wire Line
	5600 2050 5600 2750
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5F885B20
P 5400 3250
F 0 "J3" V 5554 2962 50  0000 R CNN
F 1 "Conn_01x04_Male" V 5463 2962 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5400 3250 50  0001 C CNN
F 3 "~" H 5400 3250 50  0001 C CNN
	1    5400 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2750 5350 2750
Wire Wire Line
	5350 2750 5350 3050
Wire Wire Line
	5350 3050 5400 3050
Connection ~ 5400 2750
Wire Wire Line
	5500 2750 5450 2750
Wire Wire Line
	5450 2750 5450 3050
Wire Wire Line
	5450 3050 5500 3050
Connection ~ 5500 2750
Wire Wire Line
	5600 2750 5550 2750
Wire Wire Line
	5550 2750 5550 3050
Wire Wire Line
	5550 3050 5600 3050
Connection ~ 5600 2750
Wire Wire Line
	5300 2750 5250 2750
Wire Wire Line
	5250 2750 5250 3050
Wire Wire Line
	5250 3050 5300 3050
Connection ~ 5300 2750
$EndSCHEMATC
