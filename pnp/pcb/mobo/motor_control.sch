EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 16
Title "Motors"
Date "2021-02-19"
Rev "003"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4700 2775 600  500 
U 602A1F7C
F0 "Motor X" 50
F1 "motor.sch" 50
F2 "EN" I L 4700 2875 50 
F3 "STEP" I L 4700 2975 50 
F4 "DIR" I L 4700 3075 50 
F5 "CIPO" O R 5300 2875 50 
F6 "COPI" I R 5300 2975 50 
F7 "SCK" I R 5300 3075 50 
F8 "CS_UART" I R 5300 3175 50 
$EndSheet
$Sheet
S 4700 3525 600  500 
U 60347CFB
F0 "Motor Z" 50
F1 "motor.sch" 50
F2 "EN" I L 4700 3625 50 
F3 "STEP" I L 4700 3725 50 
F4 "DIR" I L 4700 3825 50 
F5 "CIPO" O R 5300 3625 50 
F6 "COPI" I R 5300 3725 50 
F7 "SCK" I R 5300 3825 50 
F8 "CS_UART" I R 5300 3925 50 
$EndSheet
$Sheet
S 4700 4275 600  500 
U 6034863B
F0 "Motor Left" 50
F1 "motor.sch" 50
F2 "EN" I L 4700 4375 50 
F3 "STEP" I L 4700 4475 50 
F4 "DIR" I L 4700 4575 50 
F5 "CIPO" O R 5300 4375 50 
F6 "COPI" I R 5300 4475 50 
F7 "SCK" I R 5300 4575 50 
F8 "CS_UART" I R 5300 4675 50 
$EndSheet
$Sheet
S 4700 5025 600  500 
U 60348EA3
F0 "Motor Right" 50
F1 "motor.sch" 50
F2 "EN" I L 4700 5125 50 
F3 "STEP" I L 4700 5225 50 
F4 "DIR" I L 4700 5325 50 
F5 "CIPO" O R 5300 5125 50 
F6 "COPI" I R 5300 5225 50 
F7 "SCK" I R 5300 5325 50 
F8 "CS_UART" I R 5300 5425 50 
$EndSheet
Text HLabel 4700 2875 0    50   Input ~ 0
X_EN
Text HLabel 4700 2975 0    50   Input ~ 0
X_STEP
Text HLabel 4700 3075 0    50   Input ~ 0
X_DIR
Text HLabel 4700 3625 0    50   Input ~ 0
Z_EN
Text HLabel 4700 3725 0    50   Input ~ 0
Z_STEP
Text HLabel 4700 3825 0    50   Input ~ 0
Z_DIR
Text HLabel 4700 4375 0    50   Input ~ 0
L_EN
Text HLabel 4700 4475 0    50   Input ~ 0
L_STEP
Text HLabel 4700 4575 0    50   Input ~ 0
L_DIR
Text HLabel 4700 5125 0    50   Input ~ 0
R_EN
Text HLabel 4700 5225 0    50   Input ~ 0
R_STEP
Text HLabel 4700 5325 0    50   Input ~ 0
R_DIR
Text HLabel 6525 2875 0    50   Input ~ 0
A_EN
Text HLabel 6525 2975 0    50   Input ~ 0
A_STEP
Text HLabel 6525 3075 0    50   Input ~ 0
A_DIR
Text HLabel 5300 5125 2    50   Output ~ 0
CIPO
Text HLabel 5300 5225 2    50   Input ~ 0
COPI
Text HLabel 5300 5325 2    50   Input ~ 0
SCK
Text HLabel 5300 4375 2    50   Output ~ 0
CIPO
Text HLabel 5300 4475 2    50   Input ~ 0
COPI
Text HLabel 5300 4675 2    50   Input ~ 0
L_CS_UART
Text HLabel 5300 4575 2    50   Input ~ 0
SCK
Text HLabel 5300 3625 2    50   Output ~ 0
CIPO
Text HLabel 5300 3725 2    50   Input ~ 0
COPI
Text HLabel 5300 3925 2    50   Input ~ 0
Z_CS_UART
Text HLabel 5300 3825 2    50   Input ~ 0
SCK
Text HLabel 5300 2875 2    50   Output ~ 0
CIPO
Text HLabel 5300 2975 2    50   Input ~ 0
COPI
Text HLabel 5300 3175 2    50   Input ~ 0
X_CS_UART
Text HLabel 5300 3075 2    50   Input ~ 0
SCK
$Sheet
S 6525 2775 675  525 
U 6057B851
F0 "Motor AUX" 50
F1 "dual_motors.sch" 50
F2 "CIPO" O R 7200 2875 50 
F3 "COPI" I R 7200 2975 50 
F4 "CS_UART" I R 7200 3175 50 
F5 "SCK" I R 7200 3075 50 
F6 "EN" I L 6525 2875 50 
F7 "STEP" I L 6525 2975 50 
F8 "DIR" I L 6525 3075 50 
$EndSheet
Text HLabel 7200 2875 2    50   Output ~ 0
CIPO
Text HLabel 7200 2975 2    50   Input ~ 0
COPI
Text HLabel 7200 3175 2    50   Input ~ 0
A_CS_UART
Text HLabel 7200 3075 2    50   Input ~ 0
SCK
Text HLabel 6475 3800 0    50   Input ~ 0
Y_EN
Text HLabel 6475 3900 0    50   Input ~ 0
Y_STEP
Text HLabel 6475 4000 0    50   Input ~ 0
Y_DIR
$Sheet
S 6475 3700 675  525 
U 60582104
F0 "Motor Y" 50
F1 "dual_motors.sch" 50
F2 "CIPO" O R 7150 3800 50 
F3 "COPI" I R 7150 3900 50 
F4 "CS_UART" I R 7150 4100 50 
F5 "SCK" I R 7150 4000 50 
F6 "EN" I L 6475 3800 50 
F7 "STEP" I L 6475 3900 50 
F8 "DIR" I L 6475 4000 50 
$EndSheet
Text HLabel 7150 3800 2    50   Output ~ 0
CIPO
Text HLabel 7150 3900 2    50   Input ~ 0
COPI
Text HLabel 7150 4100 2    50   Input ~ 0
Y_CS_UART
Text HLabel 7150 4000 2    50   Input ~ 0
SCK
Text HLabel 5300 5425 2    50   Input ~ 0
R_CS_UART
$EndSCHEMATC
