EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 20
Title "Index Mobo"
Date "2021-09-20"
Rev "003"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4600 1850 800  900 
U 602A1F7C
F0 "Motor X" 50
F1 "Motor.sch" 50
F2 "EN" I L 4600 2450 50 
F3 "STEP" I L 4600 2550 50 
F4 "DIR" I L 4600 2650 50 
F5 "CIPO" O L 4600 1950 50 
F6 "COPI" I L 4600 2050 50 
F7 "SCK" I L 4600 2150 50 
F8 "CS_UART" I L 4600 2250 50 
$EndSheet
Text HLabel 4600 2450 0    50   Input ~ 0
X_EN
Text HLabel 4600 2550 0    50   Input ~ 0
X_STEP
Text HLabel 4600 2650 0    50   Input ~ 0
X_DIR
Text HLabel 4600 3600 0    50   Input ~ 0
Z_EN
Text HLabel 4600 3700 0    50   Input ~ 0
Z_STEP
Text HLabel 4600 3800 0    50   Input ~ 0
Z_DIR
Text HLabel 4600 4750 0    50   Input ~ 0
L_EN
Text HLabel 4600 4850 0    50   Input ~ 0
L_STEP
Text HLabel 4600 4950 0    50   Input ~ 0
L_DIR
Text HLabel 4600 5950 0    50   Input ~ 0
R_EN
Text HLabel 4600 6050 0    50   Input ~ 0
R_STEP
Text HLabel 4600 6150 0    50   Input ~ 0
R_DIR
Text HLabel 6800 2450 0    50   Input ~ 0
A_EN
Text HLabel 6800 2550 0    50   Input ~ 0
A_STEP
Text HLabel 6800 2650 0    50   Input ~ 0
A_DIR
Text HLabel 3850 1450 0    50   Output ~ 0
CIPO
Text HLabel 3850 1550 0    50   Input ~ 0
COPI
Text HLabel 4600 2250 0    50   Input ~ 0
X_CS_UART
Text HLabel 3850 1650 0    50   Input ~ 0
SCK
Text HLabel 6800 2250 0    50   Input ~ 0
A_CS_UART
Text HLabel 6800 3600 0    50   Input ~ 0
Y_EN
Text HLabel 6800 3700 0    50   Input ~ 0
Y_STEP
Text HLabel 6800 3800 0    50   Input ~ 0
Y_DIR
Text HLabel 6800 3400 0    50   Input ~ 0
Y_CS_UART
$Sheet
S 4600 3000 800  900 
U 6148D365
F0 "Motor Z" 50
F1 "Motor.sch" 50
F2 "EN" I L 4600 3600 50 
F3 "STEP" I L 4600 3700 50 
F4 "DIR" I L 4600 3800 50 
F5 "CIPO" O L 4600 3100 50 
F6 "COPI" I L 4600 3200 50 
F7 "SCK" I L 4600 3300 50 
F8 "CS_UART" I L 4600 3400 50 
$EndSheet
Wire Wire Line
	4600 3100 4050 3100
Wire Wire Line
	4050 3100 4050 1950
Wire Wire Line
	4050 1950 4600 1950
Wire Wire Line
	4600 3200 4000 3200
Wire Wire Line
	4000 3200 4000 2050
Wire Wire Line
	4000 2050 4600 2050
Wire Wire Line
	4600 3300 3950 3300
Wire Wire Line
	3950 3300 3950 2150
Wire Wire Line
	3950 2150 4600 2150
$Sheet
S 4600 4150 800  900 
U 6148DF3B
F0 "Motor left" 50
F1 "Motor.sch" 50
F2 "EN" I L 4600 4750 50 
F3 "STEP" I L 4600 4850 50 
F4 "DIR" I L 4600 4950 50 
F5 "CIPO" O L 4600 4250 50 
F6 "COPI" I L 4600 4350 50 
F7 "SCK" I L 4600 4450 50 
F8 "CS_UART" I L 4600 4550 50 
$EndSheet
$Sheet
S 6800 3000 800  900 
U 6148F810
F0 "Motor Y" 50
F1 "Dual-motor.sch" 50
F2 "EN" I L 6800 3600 50 
F3 "STEP" I L 6800 3700 50 
F4 "DIR" I L 6800 3800 50 
F5 "CIPO" O L 6800 3100 50 
F6 "COPI" I L 6800 3200 50 
F7 "CS_UART" I L 6800 3400 50 
F8 "SCK" I L 6800 3300 50 
$EndSheet
Wire Wire Line
	4050 3100 4050 4250
Wire Wire Line
	4050 4250 4600 4250
Connection ~ 4050 3100
Wire Wire Line
	4000 4350 4000 3200
Connection ~ 4000 3200
Wire Wire Line
	4600 4450 3950 4450
Wire Wire Line
	3950 4450 3950 3300
Connection ~ 3950 3300
Wire Wire Line
	3850 1450 4050 1450
Connection ~ 4050 1950
Wire Wire Line
	3850 1550 4000 1550
Connection ~ 4000 2050
Wire Wire Line
	3950 1650 3850 1650
Connection ~ 3950 2150
$Sheet
S 4600 5350 800  900 
U 6149489F
F0 "Motor right" 50
F1 "Motor.sch" 50
F2 "EN" I L 4600 5950 50 
F3 "STEP" I L 4600 6050 50 
F4 "DIR" I L 4600 6150 50 
F5 "CIPO" O L 4600 5450 50 
F6 "COPI" I L 4600 5550 50 
F7 "SCK" I L 4600 5650 50 
F8 "CS_UART" I L 4600 5750 50 
$EndSheet
Wire Wire Line
	4050 5450 4600 5450
Connection ~ 4050 4250
Wire Wire Line
	4600 4350 4000 4350
Wire Wire Line
	4050 4250 4050 5450
Wire Wire Line
	4600 5550 4000 5550
Wire Wire Line
	4000 5550 4000 4350
Connection ~ 4000 4350
Wire Wire Line
	4600 5650 3950 5650
Wire Wire Line
	3950 5650 3950 4450
Connection ~ 3950 4450
Wire Wire Line
	6800 3100 6250 3100
Wire Wire Line
	6250 3100 6250 1950
Wire Wire Line
	6250 1950 6800 1950
Wire Wire Line
	6800 3200 6200 3200
Wire Wire Line
	6200 3200 6200 2050
Wire Wire Line
	6200 2050 6800 2050
Wire Wire Line
	6800 3300 6150 3300
Wire Wire Line
	6150 3300 6150 2150
Wire Wire Line
	6150 2150 6800 2150
Connection ~ 6250 1950
Connection ~ 6200 2050
Connection ~ 6150 2150
Text HLabel 4600 3400 0    50   Input ~ 0
Z_CS_UART
Text HLabel 4600 4550 0    50   Input ~ 0
L_CS_UART
Text HLabel 4600 5750 0    50   Input ~ 0
R_CS_UART
Wire Wire Line
	6250 1950 6250 1450
Wire Wire Line
	6250 1450 4050 1450
Wire Wire Line
	4050 1450 4050 1950
Wire Wire Line
	4000 2050 4000 1550
Wire Wire Line
	4000 1550 6200 1550
Wire Wire Line
	6200 1550 6200 2050
Wire Wire Line
	3950 2150 3950 1650
Wire Wire Line
	3950 1650 6150 1650
Wire Wire Line
	6150 1650 6150 2150
Connection ~ 3950 1650
Connection ~ 4000 1550
Connection ~ 4050 1450
$Sheet
S 6800 1850 800  900 
U 6148EB40
F0 "Motor AUX" 50
F1 "Dual-motor.sch" 50
F2 "EN" I L 6800 2450 50 
F3 "STEP" I L 6800 2550 50 
F4 "DIR" I L 6800 2650 50 
F5 "CIPO" O L 6800 1950 50 
F6 "COPI" I L 6800 2050 50 
F7 "CS_UART" I L 6800 2250 50 
F8 "SCK" I L 6800 2150 50 
$EndSheet
$EndSCHEMATC
