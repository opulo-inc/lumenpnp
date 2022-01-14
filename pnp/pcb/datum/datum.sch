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
L power:GND #PWR0101
U 1 1 61DF5FB5
P 2800 4100
F 0 "#PWR0101" H 2800 3850 50  0001 C CNN
F 1 "GND" H 2805 3927 50  0000 C CNN
F 2 "" H 2800 4100 50  0001 C CNN
F 3 "" H 2800 4100 50  0001 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61DF6F95
P 3250 2700
F 0 "H1" H 3350 2749 50  0000 L CNN
F 1 "MountingHole_Pad" H 3350 2658 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3250 2700 50  0001 C CNN
F 3 "~" H 3250 2700 50  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61DF7944
P 3250 3100
F 0 "H2" H 3350 3149 50  0000 L CNN
F 1 "MountingHole_Pad" H 3350 3058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3250 3100 50  0001 C CNN
F 3 "~" H 3250 3100 50  0001 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61DF9204
P 3250 3550
F 0 "H3" H 3350 3599 50  0000 L CNN
F 1 "MountingHole_Pad" H 3350 3508 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3250 3550 50  0001 C CNN
F 3 "~" H 3250 3550 50  0001 C CNN
	1    3250 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 61DF9570
P 3250 4000
F 0 "H4" H 3350 4049 50  0000 L CNN
F 1 "MountingHole_Pad" H 3350 3958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3250 4000 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4100 3050 4100
Wire Wire Line
	3250 3650 3050 3650
Wire Wire Line
	3050 3650 3050 4100
Connection ~ 3050 4100
Wire Wire Line
	3050 4100 3250 4100
Wire Wire Line
	3250 3200 3050 3200
Wire Wire Line
	3050 3200 3050 3650
Connection ~ 3050 3650
Wire Wire Line
	3250 2800 3050 2800
Wire Wire Line
	3050 2800 3050 3200
Connection ~ 3050 3200
$Comp
L Connector:TestPoint TP1
U 1 1 61E19114
P 2800 4100
F 0 "TP1" H 2858 4218 50  0000 L CNN
F 1 "TestPoint" H 2858 4127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 3000 4100 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
Connection ~ 2800 4100
$EndSCHEMATC
