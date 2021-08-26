EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 20
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4200 6550
NoConn ~ 2400 5650
Text Label 9600 2475 2    50   ~ 0
BOOT0
Wire Wire Line
	9600 2475 9675 2475
$Comp
L Connector:TestPoint TP?
U 1 1 612B782E
P 9675 2475
F 0 "TP?" H 9733 2593 50  0000 L CNN
F 1 "BOOT0_TestPoint" H 9733 2502 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9875 2475 50  0001 C CNN
F 3 "~" H 9875 2475 50  0001 C CNN
	1    9675 2475
	1    0    0    -1  
$EndComp
NoConn ~ 2400 6150
NoConn ~ 2400 3450
NoConn ~ 2400 3550
NoConn ~ 2400 4050
NoConn ~ 2400 5150
NoConn ~ 2400 5250
NoConn ~ 2400 5350
NoConn ~ 2400 5450
NoConn ~ 4200 6650
NoConn ~ 4200 6450
NoConn ~ 4200 6350
NoConn ~ 4200 6250
NoConn ~ 4200 6150
Wire Wire Line
	3700 1350 3700 1450
$Comp
L power:+3.3VA #PWR?
U 1 1 612B784C
P 3700 1350
F 0 "#PWR?" H 3700 1200 50  0001 C CNN
F 1 "+3.3VA" H 3715 1523 50  0000 C CNN
F 2 "" H 3700 1350 50  0001 C CNN
F 3 "" H 3700 1350 50  0001 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F407VETx U?
U 1 1 612B7857
P 3300 4150
F 0 "U?" H 3300 3950 50  0000 C CNN
F 1 "STM32F407VETx" H 3300 4150 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2600 1550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 3300 4150 50  0001 C CNN
F 4 "497-12075-ND" H 3300 4150 50  0001 C CNN "Digikey"
F 5 "C28730" H 3300 4150 50  0001 C CNN "JLCPCB"
F 6 "C28730" H 3300 4150 50  0001 C CNN "LCSC"
F 7 "511-STM32F407VET6" H 3300 4150 50  0001 C CNN "Mouser"
	1    3300 4150
	1    0    0    -1  
$EndComp
NoConn ~ 2400 5550
$Comp
L Device:Crystal_GND24_Small Y?
U 1 1 612B7892
P 1650 3350
F 0 "Y?" H 1500 3300 50  0000 L CNN
F 1 "8MHz" H 1550 3600 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1650 3350 50  0001 C CNN
F 3 "" H 1650 3350 50  0001 C CNN
F 4 "C57131" H 1650 3350 50  0001 C CNN "JLCPCB"
F 5 "C518155" H 1650 3350 50  0001 C CNN "LCSC"
F 6 "50-ECS-80-10-33-CHN-CT-ND" H 1650 3350 50  0001 C CNN "Digikey"
F 7 "520-ECS-80-1033CHNTR" H 1650 3350 50  0001 C CNN "Mouser"
	1    1650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612B78A6
P 1450 3550
F 0 "C?" H 1200 3600 50  0000 L CNN
F 1 "10p" H 1200 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1450 3550 50  0001 C CNN
F 3 "" H 1450 3550 50  0001 C CNN
F 4 "" H 1450 3550 50  0001 C CNN "Digikey"
F 5 "C1785" H 1450 3550 50  0001 C CNN "JLCPCB"
F 6 "C525280" H 1450 3550 50  0001 C CNN "LCSC"
F 7 "" H 1450 3550 50  0001 C CNN "Mouser"
	1    1450 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612B78B0
P 1850 3550
F 0 "C?" H 1942 3596 50  0000 L CNN
F 1 "10p" H 1942 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1850 3550 50  0001 C CNN
F 3 "" H 1850 3550 50  0001 C CNN
F 4 "" H 1850 3550 50  0001 C CNN "Digikey"
F 5 "C1785" H 1850 3550 50  0001 C CNN "JLCPCB"
F 6 "C525280" H 1850 3550 50  0001 C CNN "LCSC"
F 7 "" H 1850 3550 50  0001 C CNN "Mouser"
	1    1850 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612B78C4
P 1650 2400
F 0 "C?" H 1450 2400 50  0000 L CNN
F 1 "2.2u" H 1450 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1650 2400 50  0001 C CNN
F 3 "" H 1650 2400 50  0001 C CNN
F 4 "587-4961-1-ND" H 1650 2400 50  0001 C CNN "Digikey"
F 5 "C49217" H 1650 2400 50  0001 C CNN "JLCPCB"
F 6 "C49217" H 1650 2400 50  0001 C CNN "LCSC"
F 7 "963-UMK212ABJ225KG-T" H 1650 2400 50  0001 C CNN "Mouser"
	1    1650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 612B78E5
P 3300 1350
F 0 "#PWR?" H 3300 1200 50  0001 C CNN
F 1 "+3.3V" H 3315 1523 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Text Label 4200 3150 0    50   ~ 0
PA14_SWCLK
Text Label 4200 3050 0    50   ~ 0
PA13_SWDIO
Text Label 2400 1950 2    50   ~ 0
BOOT0
Text Label 2400 1750 2    50   ~ 0
RESET
Connection ~ 1650 3500
Wire Wire Line
	1650 3450 1650 3500
Wire Wire Line
	1650 3200 1650 3250
Wire Wire Line
	3000 1400 3100 1400
Wire Wire Line
	3000 1450 3000 1400
Wire Wire Line
	1650 3500 1650 3550
Wire Wire Line
	1775 3500 1650 3500
Wire Wire Line
	1775 3200 1775 3500
Wire Wire Line
	1650 3200 1775 3200
$Comp
L power:GND #PWR?
U 1 1 612B791E
P 1650 3550
F 0 "#PWR?" H 1650 3300 50  0001 C CNN
F 1 "GND" H 1655 3377 50  0000 C CNN
F 2 "" H 1650 3550 50  0001 C CNN
F 3 "" H 1650 3550 50  0001 C CNN
	1    1650 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 612B7926
P 2350 2350
F 0 "#PWR?" H 2350 2200 50  0001 C CNN
F 1 "+3V3" V 2350 2550 50  0000 C CNN
F 2 "" H 2350 2350 50  0001 C CNN
F 3 "" H 2350 2350 50  0001 C CNN
	1    2350 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612B792C
P 1850 3650
F 0 "#PWR?" H 1850 3400 50  0001 C CNN
F 1 "GND" H 1855 3477 50  0000 C CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612B7932
P 1450 3650
F 0 "#PWR?" H 1450 3400 50  0001 C CNN
F 1 "GND" H 1455 3477 50  0000 C CNN
F 2 "" H 1450 3650 50  0001 C CNN
F 3 "" H 1450 3650 50  0001 C CNN
	1    1450 3650
	1    0    0    -1  
$EndComp
Connection ~ 1450 3350
Wire Wire Line
	1450 3150 1450 3350
Connection ~ 1850 3350
Wire Wire Line
	1850 3250 1850 3350
Wire Wire Line
	1850 3350 1850 3450
Wire Wire Line
	1750 3350 1850 3350
Wire Wire Line
	1450 3350 1550 3350
Wire Wire Line
	1450 3450 1450 3350
$Comp
L power:GND #PWR?
U 1 1 612B7945
P 1950 2550
F 0 "#PWR?" H 1950 2300 50  0001 C CNN
F 1 "GND" H 1955 2377 50  0000 C CNN
F 2 "" H 1950 2550 50  0001 C CNN
F 3 "" H 1950 2550 50  0001 C CNN
	1    1950 2550
	1    0    0    -1  
$EndComp
Connection ~ 3500 1400
Wire Wire Line
	3600 1400 3600 1450
Wire Wire Line
	3500 1400 3600 1400
Connection ~ 3400 7000
Wire Wire Line
	3500 7000 3500 6950
Wire Wire Line
	3400 7000 3500 7000
Connection ~ 3300 7000
Wire Wire Line
	3400 7000 3400 6950
Wire Wire Line
	3300 7000 3400 7000
Connection ~ 3200 7000
Wire Wire Line
	3300 7000 3300 6950
Wire Wire Line
	3200 7000 3300 7000
Wire Wire Line
	3400 1400 3300 1400
Connection ~ 3400 1400
Wire Wire Line
	3400 1450 3400 1400
Connection ~ 3300 1400
Wire Wire Line
	3500 1400 3400 1400
Wire Wire Line
	3500 1450 3500 1400
Connection ~ 3200 1400
Wire Wire Line
	3300 1400 3200 1400
Wire Wire Line
	3300 1450 3300 1400
Connection ~ 3100 1400
Wire Wire Line
	3200 1400 3100 1400
Wire Wire Line
	3200 1450 3200 1400
Wire Wire Line
	3100 1450 3100 1400
Wire Wire Line
	3200 7000 3100 7000
Wire Wire Line
	3200 6950 3200 7000
Wire Wire Line
	3100 7000 3100 6950
$Comp
L power:GND #PWR?
U 1 1 612B796B
P 3100 7050
F 0 "#PWR?" H 3100 6800 50  0001 C CNN
F 1 "GND" H 3105 6877 50  0000 C CNN
F 2 "" H 3100 7050 50  0001 C CNN
F 3 "" H 3100 7050 50  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612C7F61
P 10350 1750
AR Path="/612C7F61" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612C7F61" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 1500 50  0001 C CNN
F 1 "GND" H 10355 1577 50  0000 C CNN
F 2 "" H 10350 1750 50  0001 C CNN
F 3 "" H 10350 1750 50  0001 C CNN
	1    10350 1750
	1    0    0    -1  
$EndComp
Text Notes 9400 1050 0    50   ~ 0
Analog Decoupling
Text Notes 5950 1050 0    50   ~ 0
Digital Decoupling
$Comp
L power:+3.3V #PWR?
U 1 1 612C7F82
P 6100 1300
AR Path="/612C7F82" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612C7F82" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 1150 50  0001 C CNN
F 1 "+3.3V" H 6115 1473 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 612C7F88
P 9550 1350
AR Path="/612C7F88" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612C7F88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9550 1200 50  0001 C CNN
F 1 "+3.3V" H 9565 1523 50  0000 C CNN
F 2 "" H 9550 1350 50  0001 C CNN
F 3 "" H 9550 1350 50  0001 C CNN
	1    9550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7F98
P 6800 1500
AR Path="/612C7F98" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7F98" Ref="C?"  Part="1" 
F 0 "C?" H 6892 1546 50  0000 L CNN
F 1 "100n" H 6892 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6800 1500 50  0001 C CNN
F 3 "" H 6800 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 6800 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 6800 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 6800 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 6800 1500 50  0001 C CNN "Mouser"
	1    6800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FA2
P 7200 1500
AR Path="/612C7FA2" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FA2" Ref="C?"  Part="1" 
F 0 "C?" H 7292 1546 50  0000 L CNN
F 1 "100n" H 7292 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7200 1500 50  0001 C CNN
F 3 "" H 7200 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 7200 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 7200 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 7200 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 7200 1500 50  0001 C CNN "Mouser"
	1    7200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FAC
P 7600 1500
AR Path="/612C7FAC" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FAC" Ref="C?"  Part="1" 
F 0 "C?" H 7692 1546 50  0000 L CNN
F 1 "100n" H 7692 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7600 1500 50  0001 C CNN
F 3 "" H 7600 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 7600 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 7600 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 7600 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 7600 1500 50  0001 C CNN "Mouser"
	1    7600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FB6
P 8000 1500
AR Path="/612C7FB6" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FB6" Ref="C?"  Part="1" 
F 0 "C?" H 8092 1546 50  0000 L CNN
F 1 "100n" H 8092 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8000 1500 50  0001 C CNN
F 3 "" H 8000 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 8000 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 8000 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 8000 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 8000 1500 50  0001 C CNN "Mouser"
	1    8000 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FC0
P 8400 1500
AR Path="/612C7FC0" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FC0" Ref="C?"  Part="1" 
F 0 "C?" H 8492 1546 50  0000 L CNN
F 1 "100n" H 8492 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8400 1500 50  0001 C CNN
F 3 "" H 8400 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 8400 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 8400 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 8400 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 8400 1500 50  0001 C CNN "Mouser"
	1    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FCA
P 8800 1500
AR Path="/612C7FCA" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FCA" Ref="C?"  Part="1" 
F 0 "C?" H 8892 1546 50  0000 L CNN
F 1 "100n" H 8892 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8800 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0001 C CNN
F 4 "1276-1180-1-ND" H 8800 1500 50  0001 C CNN "Digikey"
F 5 "C49678" H 8800 1500 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 8800 1500 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 8800 1500 50  0001 C CNN "Mouser"
	1    8800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FD4
P 10000 1550
AR Path="/612C7FD4" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FD4" Ref="C?"  Part="1" 
F 0 "C?" H 10092 1596 50  0000 L CNN
F 1 "100n" H 10092 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10000 1550 50  0001 C CNN
F 3 "" H 10000 1550 50  0001 C CNN
F 4 "1276-1180-1-ND" H 10000 1550 50  0001 C CNN "Digikey"
F 5 "C49678" H 10000 1550 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 10000 1550 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 10000 1550 50  0001 C CNN "Mouser"
	1    10000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FDE
P 6450 1500
AR Path="/612C7FDE" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FDE" Ref="C?"  Part="1" 
F 0 "C?" H 6525 1550 50  0000 L CNN
F 1 "2.2u" H 6525 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6450 1500 50  0001 C CNN
F 3 "" H 6450 1500 50  0001 C CNN
F 4 "587-4961-1-ND" H 6450 1500 50  0001 C CNN "Digikey"
F 5 "C49217" H 6450 1500 50  0001 C CNN "JLCPCB"
F 6 "C49217" H 6450 1500 50  0001 C CNN "LCSC"
F 7 "963-UMK212ABJ225KG-T" H 6450 1500 50  0001 C CNN "Mouser"
	1    6450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FE8
P 6100 1500
AR Path="/612C7FE8" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FE8" Ref="C?"  Part="1" 
F 0 "C?" H 6175 1550 50  0000 L CNN
F 1 "2.2u" H 6175 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0001 C CNN
F 4 "587-4961-1-ND" H 6100 1500 50  0001 C CNN "Digikey"
F 5 "C49217" H 6100 1500 50  0001 C CNN "JLCPCB"
F 6 "C49217" H 6100 1500 50  0001 C CNN "LCSC"
F 7 "963-UMK212ABJ225KG-T" H 6100 1500 50  0001 C CNN "Mouser"
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612C7FF2
P 10350 1550
AR Path="/612C7FF2" Ref="C?"  Part="1" 
AR Path="/612AA714/612C7FF2" Ref="C?"  Part="1" 
F 0 "C?" H 10425 1600 50  0000 L CNN
F 1 "2.2u" H 10425 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10350 1550 50  0001 C CNN
F 3 "" H 10350 1550 50  0001 C CNN
F 4 "587-4961-1-ND" H 10350 1550 50  0001 C CNN "Digikey"
F 5 "C49217" H 10350 1550 50  0001 C CNN "JLCPCB"
F 6 "C49217" H 10350 1550 50  0001 C CNN "LCSC"
F 7 "963-UMK212ABJ225KG-T" H 10350 1550 50  0001 C CNN "Mouser"
	1    10350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 612C7FFA
P 9850 1400
AR Path="/5EB0C5A0/612C7FFA" Ref="FB?"  Part="1" 
AR Path="/612C7FFA" Ref="FB?"  Part="1" 
AR Path="/612AA714/612C7FFA" Ref="FB?"  Part="1" 
F 0 "FB?" V 9600 1400 50  0000 C CNN
F 1 "2.5k" V 9700 1400 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9780 1400 50  0001 C CNN
F 3 "~" H 9850 1400 50  0001 C CNN
F 4 "C316257" H 9850 1400 50  0001 C CNN "LCSC"
F 5 "C1017" V 9850 1400 50  0001 C CNN "JLCPCB"
	1    9850 1400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 612C8005
P 10350 1350
AR Path="/612C8005" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612C8005" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 1200 50  0001 C CNN
F 1 "+3.3VA" H 10365 1523 50  0000 C CNN
F 2 "" H 10350 1350 50  0001 C CNN
F 3 "" H 10350 1350 50  0001 C CNN
	1    10350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 612C800D
P 10200 1350
AR Path="/612C800D" Ref="#FLG?"  Part="1" 
AR Path="/612AA714/612C800D" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 10200 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 10200 1523 50  0001 C CNN
F 2 "" H 10200 1350 50  0001 C CNN
F 3 "~" H 10200 1350 50  0001 C CNN
	1    10200 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612E1207
P 7750 3350
AR Path="/612E1207" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612E1207" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 3100 50  0001 C CNN
F 1 "GND" H 7755 3177 50  0000 C CNN
F 2 "" H 7750 3350 50  0001 C CNN
F 3 "" H 7750 3350 50  0001 C CNN
	1    7750 3350
	1    0    0    -1  
$EndComp
Text Label 7700 3000 2    50   ~ 0
BOOT0
$Comp
L power:+3.3V #PWR?
U 1 1 612E120E
P 7750 2500
AR Path="/612E120E" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612E120E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 2350 50  0001 C CNN
F 1 "+3.3V" H 7765 2673 50  0000 C CNN
F 2 "" H 7750 2500 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 612E1214
P 6650 2500
AR Path="/612E1214" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612E1214" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 2350 50  0001 C CNN
F 1 "+3.3V" H 6665 2673 50  0000 C CNN
F 2 "" H 6650 2500 50  0001 C CNN
F 3 "" H 6650 2500 50  0001 C CNN
	1    6650 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612E121E
P 6300 3050
AR Path="/612E121E" Ref="C?"  Part="1" 
AR Path="/612AA714/612E121E" Ref="C?"  Part="1" 
F 0 "C?" H 6400 3050 50  0000 L CNN
F 1 "100n" H 6350 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6300 3050 50  0001 C CNN
F 3 "" H 6300 3050 50  0001 C CNN
F 4 "1276-1180-1-ND" H 6300 3050 50  0001 C CNN "Digikey"
F 5 "C49678" H 6300 3050 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 6300 3050 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 6300 3050 50  0001 C CNN "Mouser"
	1    6300 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 612E1228
P 7750 3150
AR Path="/612E1228" Ref="R?"  Part="1" 
AR Path="/612AA714/612E1228" Ref="R?"  Part="1" 
F 0 "R?" H 7809 3196 50  0000 L CNN
F 1 "10k" H 7809 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7750 3150 50  0001 C CNN
F 3 "" H 7750 3150 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" H 7750 3150 50  0001 C CNN "Digikey"
F 5 "C17414" H 7750 3150 50  0001 C CNN "JLCPCB"
F 6 "C115295" H 7750 3150 50  0001 C CNN "LCSC"
F 7 "71-CRCW080510K0FKEAC" H 7750 3150 50  0001 C CNN "Mouser"
	1    7750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 612E1232
P 6650 2650
AR Path="/612E1232" Ref="R?"  Part="1" 
AR Path="/612AA714/612E1232" Ref="R?"  Part="1" 
F 0 "R?" H 6709 2696 50  0000 L CNN
F 1 "10k" H 6709 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6650 2650 50  0001 C CNN
F 3 "" H 6650 2650 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" H 6650 2650 50  0001 C CNN "Digikey"
F 5 "C17414" H 6650 2650 50  0001 C CNN "JLCPCB"
F 6 "C115295" H 6650 2650 50  0001 C CNN "LCSC"
F 7 "71-CRCW080510K0FKEAC" H 6650 2650 50  0001 C CNN "Mouser"
	1    6650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 612E123C
P 8100 3150
AR Path="/612E123C" Ref="C?"  Part="1" 
AR Path="/612AA714/612E123C" Ref="C?"  Part="1" 
F 0 "C?" H 8192 3196 50  0000 L CNN
F 1 "100n" H 8192 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8100 3150 50  0001 C CNN
F 3 "" H 8100 3150 50  0001 C CNN
F 4 "1276-1180-1-ND" H 8100 3150 50  0001 C CNN "Digikey"
F 5 "C49678" H 8100 3150 50  0001 C CNN "JLCPCB"
F 6 "C360619" H 8100 3150 50  0001 C CNN "LCSC"
F 7 "581-08055C104K" H 8100 3150 50  0001 C CNN "Mouser"
	1    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 612E124C
P 7750 2750
AR Path="/612E124C" Ref="SW?"  Part="1" 
AR Path="/612AA714/612E124C" Ref="SW?"  Part="1" 
F 0 "SW?" V 7700 3100 50  0000 R CNN
F 1 "SW_Push" V 7800 3200 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 7750 2950 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3s.pdf" H 7750 2950 50  0001 C CNN
F 4 "C83206" H 7750 2750 50  0001 C CNN "JLCPCB"
F 5 "SW415-ND" H 7750 2750 50  0001 C CNN "Digikey"
F 6 "C83206" H 7750 2750 50  0001 C CNN "LCSC"
F 7 "653-B3S-1000P" H 7750 2750 50  0001 C CNN "Mouser"
	1    7750 2750
	0    1    1    0   
$EndComp
Text Label 6250 2800 2    50   ~ 0
RESET
$Comp
L power:GND #PWR?
U 1 1 612E6E5B
P 6350 4600
F 0 "#PWR?" H 6350 4350 50  0001 C CNN
F 1 "GND" V 6350 4400 50  0000 C CNN
F 2 "" H 6350 4600 50  0001 C CNN
F 3 "" H 6350 4600 50  0001 C CNN
	1    6350 4600
	0    1    1    0   
$EndComp
Text Label 6900 4300 0    50   ~ 0
SWCLK
Text Label 6900 4200 0    50   ~ 0
SWDIO
Text Label 6900 4600 0    50   ~ 0
RESET
$Comp
L power:+3.3V #PWR?
U 1 1 612E6E6B
P 6350 4200
F 0 "#PWR?" H 6350 4050 50  0001 C CNN
F 1 "+3.3V" V 6350 4450 50  0000 C CNN
F 2 "" H 6350 4200 50  0001 C CNN
F 3 "" H 6350 4200 50  0001 C CNN
	1    6350 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 612E6E79
P 9675 2725
F 0 "TP?" H 9733 2843 50  0000 L CNN
F 1 "RESET_TestPoint" H 9733 2752 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9875 2725 50  0001 C CNN
F 3 "~" H 9875 2725 50  0001 C CNN
	1    9675 2725
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 612E6E7F
P 9675 3000
F 0 "TP?" H 9733 3118 50  0000 L CNN
F 1 "SWCLK_TestPoint" H 9733 3027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9875 3000 50  0001 C CNN
F 3 "~" H 9875 3000 50  0001 C CNN
	1    9675 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 612E6E85
P 9675 3275
F 0 "TP?" H 9733 3393 50  0000 L CNN
F 1 "SWDIO_TestPoint" H 9733 3302 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9875 3275 50  0001 C CNN
F 3 "~" H 9875 3275 50  0001 C CNN
	1    9675 3275
	1    0    0    -1  
$EndComp
Text Label 9600 2725 2    50   ~ 0
RESET
Wire Wire Line
	9600 2725 9675 2725
Text Label 9600 3000 2    50   ~ 0
SWCLK
Wire Wire Line
	9600 3000 9675 3000
Text Label 9600 3275 2    50   ~ 0
SWDIO
Wire Wire Line
	9600 3275 9675 3275
Text Label 8800 3050 2    50   ~ 0
PB2_BOOT1
Wire Wire Line
	8800 3100 8800 3050
Text HLabel 4200 2950 2    50   BiDi ~ 0
PA12_USB_D+
Text HLabel 4200 2850 2    50   BiDi ~ 0
PA11_USB_D-
Wire Wire Line
	3300 1350 3300 1400
$Comp
L Device:C_Small C?
U 1 1 6135D7CA
P 1950 2400
F 0 "C?" H 1750 2400 50  0000 L CNN
F 1 "2.2u" H 1750 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
F 4 "587-4961-1-ND" H 1950 2400 50  0001 C CNN "Digikey"
F 5 "C49217" H 1950 2400 50  0001 C CNN "JLCPCB"
F 6 "C49217" H 1950 2400 50  0001 C CNN "LCSC"
F 7 "963-UMK212ABJ225KG-T" H 1950 2400 50  0001 C CNN "Mouser"
	1    1950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2500 1950 2550
Wire Wire Line
	1950 2300 1950 2250
Wire Wire Line
	2350 2350 2400 2350
Wire Wire Line
	1950 2250 2400 2250
Wire Wire Line
	1650 2300 1650 2150
Wire Wire Line
	1650 2150 2400 2150
$Comp
L power:GND #PWR?
U 1 1 61370DBB
P 1650 2550
F 0 "#PWR?" H 1650 2300 50  0001 C CNN
F 1 "GND" H 1655 2377 50  0000 C CNN
F 2 "" H 1650 2550 50  0001 C CNN
F 3 "" H 1650 2550 50  0001 C CNN
	1    1650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2500 1650 2550
Text HLabel 2400 3650 0    50   Input ~ 0
PE2
Text HLabel 2400 3750 0    50   Input ~ 0
PE3
Text HLabel 2400 3850 0    50   Input ~ 0
PE4
Text HLabel 2400 3950 0    50   Input ~ 0
PE5
Text HLabel 2400 4250 0    50   Input ~ 0
PE8
Text HLabel 2400 4350 0    50   Input ~ 0
PE9
Text HLabel 2400 4450 0    50   Input ~ 0
PE10
Text HLabel 2400 4550 0    50   Input ~ 0
PE11
Text HLabel 2400 4650 0    50   Input ~ 0
PE12
Text HLabel 2400 4750 0    50   Input ~ 0
PE13
Text HLabel 2400 4850 0    50   Input ~ 0
PE14
Text HLabel 2400 4950 0    50   Input ~ 0
PE15
Text HLabel 2400 5750 0    50   Input ~ 0
PD6
Text HLabel 2400 5850 0    50   Input ~ 0
PD7
Text HLabel 2400 5950 0    50   Input ~ 0
PD8
Text HLabel 2400 6050 0    50   Input ~ 0
PD9
Text HLabel 2400 6250 0    50   Input ~ 0
PD11
Text HLabel 2400 6350 0    50   Input ~ 0
PD12
Text HLabel 2400 6450 0    50   Input ~ 0
PD13
Text HLabel 2400 6550 0    50   Input ~ 0
PD14
Text HLabel 2400 6650 0    50   Input ~ 0
PD15
Text HLabel 4200 5650 2    50   Input ~ 0
PC5
Text HLabel 4200 5750 2    50   Input ~ 0
PC6
Text HLabel 4200 5850 2    50   Input ~ 0
PC7
Text HLabel 4200 5950 2    50   Input ~ 0
PC8
Text HLabel 4200 6050 2    50   Input ~ 0
PC9
Text HLabel 4200 5150 2    50   Input ~ 0
PC0
Text HLabel 4200 5250 2    50   Input ~ 0
PC1
Text HLabel 4200 5350 2    50   Input ~ 0
PC2
Text HLabel 4200 5450 2    50   Input ~ 0
PC3
Text HLabel 4200 5550 2    50   Input ~ 0
PC4
Text HLabel 4200 4750 2    50   Input ~ 0
PB13
Text HLabel 4200 4250 2    50   Input ~ 0
PB8
Text HLabel 4200 4350 2    50   Input ~ 0
PB9
Text HLabel 4200 4450 2    50   Input ~ 0
PB10
Text HLabel 4200 4550 2    50   Input ~ 0
PB11
Text HLabel 4200 4650 2    50   Input ~ 0
PB12
Text HLabel 4200 4850 2    50   Input ~ 0
PB14
Text HLabel 4200 4950 2    50   Input ~ 0
PB15
Text HLabel 4200 2150 2    50   Input ~ 0
PA4
Text HLabel 4200 2250 2    50   Input ~ 0
PA5
Text HLabel 4200 2350 2    50   Input ~ 0
PA6
Text HLabel 4200 2450 2    50   Input ~ 0
PA7
Text HLabel 4200 2550 2    50   Input ~ 0
PA8
Text HLabel 4200 1750 2    50   Input ~ 0
PA0
Text HLabel 4200 1850 2    50   Input ~ 0
PA1
Text HLabel 4200 1950 2    50   Input ~ 0
PA2
Text HLabel 4200 2050 2    50   Input ~ 0
PA3
Text HLabel 4200 2650 2    50   Input ~ 0
PA9
Text HLabel 4200 2750 2    50   Input ~ 0
PA10
Text HLabel 4200 3250 2    50   Input ~ 0
PD15
Text HLabel 4200 3450 2    50   Input ~ 0
PD15
Text HLabel 4200 3550 2    50   Input ~ 0
PD15
Text HLabel 4200 3750 2    50   Input ~ 0
PD15
Text HLabel 4200 3850 2    50   Input ~ 0
PD15
Text HLabel 4200 3950 2    50   Input ~ 0
PD15
Wire Wire Line
	7750 3050 7750 3000
Wire Wire Line
	7750 3000 8100 3000
Wire Wire Line
	8100 3000 8100 3050
Wire Wire Line
	8100 3250 8100 3300
Wire Wire Line
	8100 3300 7750 3300
Wire Wire Line
	7750 3300 7750 3250
Wire Wire Line
	7750 3300 7750 3350
Connection ~ 7750 3300
Wire Wire Line
	7700 3000 7750 3000
Connection ~ 7750 3000
Wire Wire Line
	7750 2950 7750 3000
Wire Wire Line
	7750 2500 7750 2550
$Comp
L Switch:SW_Push SW?
U 1 1 612E125D
P 6650 3050
AR Path="/612E125D" Ref="SW?"  Part="1" 
AR Path="/612AA714/612E125D" Ref="SW?"  Part="1" 
F 0 "SW?" V 6696 3198 50  0000 L CNN
F 1 "SW_Push" V 6605 3198 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 6650 3250 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3s.pdf" H 6650 3250 50  0001 C CNN
F 4 "C83206" H 6650 3050 50  0001 C CNN "JLCPCB"
F 5 "SW415-ND" H 6650 3050 50  0001 C CNN "Digikey"
F 6 "C83206" H 6650 3050 50  0001 C CNN "LCSC"
F 7 "653-B3S-1000P" H 6650 3050 50  0001 C CNN "Mouser"
	1    6650 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 2950 6300 2800
Wire Wire Line
	6300 2800 6650 2800
Wire Wire Line
	6650 2800 6650 2850
Wire Wire Line
	6650 3250 6650 3300
Wire Wire Line
	6650 3300 6300 3300
Wire Wire Line
	6300 3300 6300 3150
$Comp
L power:GND #PWR?
U 1 1 613CE55D
P 6650 3350
AR Path="/613CE55D" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/613CE55D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 3100 50  0001 C CNN
F 1 "GND" H 6655 3177 50  0000 C CNN
F 2 "" H 6650 3350 50  0001 C CNN
F 3 "" H 6650 3350 50  0001 C CNN
	1    6650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3350 6650 3300
Connection ~ 6650 3300
Wire Wire Line
	6650 2750 6650 2800
Connection ~ 6650 2800
Wire Wire Line
	6650 2500 6650 2550
Wire Wire Line
	6300 2800 6250 2800
Connection ~ 6300 2800
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 613F8F5B
P 6600 4400
F 0 "J?" H 6650 4850 50  0000 C CNN
F 1 "PinHeader 02x05 1.27mm" H 6650 4750 50  0000 C CNN
F 2 "" H 6600 4400 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614075C5
P 6350 4300
F 0 "#PWR?" H 6350 4050 50  0001 C CNN
F 1 "GND" V 6350 4100 50  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 4300 6350 4300
Wire Wire Line
	6350 4200 6400 4200
Wire Wire Line
	6400 4600 6350 4600
NoConn ~ 6400 4400
NoConn ~ 6400 4500
NoConn ~ 6900 4400
NoConn ~ 6900 4500
Wire Notes Line
	7350 3850 7350 4750
Wire Notes Line
	7350 4750 5950 4750
Wire Notes Line
	5950 4750 5950 3850
Text Notes 5950 3850 0    50   ~ 0
SWD header
Wire Notes Line
	5950 3850 7350 3850
Wire Wire Line
	3100 7000 3100 7050
Connection ~ 3100 7000
Wire Wire Line
	10000 1450 10000 1400
Wire Wire Line
	10000 1400 9950 1400
Wire Wire Line
	10000 1400 10200 1400
Wire Wire Line
	10350 1400 10350 1450
Connection ~ 10000 1400
Wire Wire Line
	10350 1650 10350 1700
Wire Wire Line
	10350 1700 10000 1700
Wire Wire Line
	10000 1700 10000 1650
Connection ~ 10350 1700
Wire Wire Line
	10350 1700 10350 1750
Wire Wire Line
	10200 1350 10200 1400
Connection ~ 10200 1400
Wire Wire Line
	10200 1400 10350 1400
Wire Wire Line
	10350 1350 10350 1400
Connection ~ 10350 1400
Wire Wire Line
	9750 1400 9550 1400
Wire Wire Line
	9550 1400 9550 1350
Wire Notes Line
	9400 1050 10650 1050
Wire Notes Line
	10650 1050 10650 2000
Wire Notes Line
	10650 2000 9400 2000
Wire Notes Line
	9400 2000 9400 1050
Wire Notes Line
	5950 1050 9150 1050
Wire Notes Line
	9150 1050 9150 2000
Wire Notes Line
	9150 2000 5950 2000
Wire Notes Line
	5950 2000 5950 1050
Wire Notes Line
	9300 2250 10450 2250
Wire Notes Line
	10450 2250 10450 3350
Wire Notes Line
	10450 3350 9300 3350
Wire Notes Line
	9300 3350 9300 2250
Text Notes 9300 2250 0    50   ~ 0
Testpoints
Wire Notes Line
	7400 2250 9050 2250
Wire Notes Line
	9050 2250 9050 3600
Wire Notes Line
	9050 3600 7400 3600
Wire Notes Line
	7400 3600 7400 2250
Wire Notes Line
	7150 2250 7150 3600
Wire Notes Line
	7150 3600 5950 3600
Wire Notes Line
	5950 3600 5950 2250
Wire Notes Line
	5950 2250 7150 2250
Text Notes 5950 2250 0    50   ~ 0
Reset button
Text Notes 7400 2250 0    50   ~ 0
Boot selection
Wire Wire Line
	6100 1400 6100 1350
Wire Wire Line
	6100 1350 6450 1350
Wire Wire Line
	8800 1350 8800 1400
Wire Wire Line
	8400 1400 8400 1350
Connection ~ 8400 1350
Wire Wire Line
	8400 1350 8800 1350
Wire Wire Line
	8000 1400 8000 1350
Connection ~ 8000 1350
Wire Wire Line
	8000 1350 8400 1350
Wire Wire Line
	7600 1400 7600 1350
Connection ~ 7600 1350
Wire Wire Line
	7600 1350 8000 1350
Wire Wire Line
	7200 1400 7200 1350
Connection ~ 7200 1350
Wire Wire Line
	7200 1350 7600 1350
Wire Wire Line
	6800 1400 6800 1350
Connection ~ 6800 1350
Wire Wire Line
	6800 1350 7200 1350
Wire Wire Line
	6450 1400 6450 1350
Connection ~ 6450 1350
Wire Wire Line
	6450 1350 6800 1350
Wire Wire Line
	8800 1600 8800 1650
Wire Wire Line
	8800 1650 8400 1650
Wire Wire Line
	6100 1650 6100 1600
Wire Wire Line
	6450 1600 6450 1650
Connection ~ 6450 1650
Wire Wire Line
	6450 1650 6100 1650
Wire Wire Line
	6800 1600 6800 1650
Connection ~ 6800 1650
Wire Wire Line
	6800 1650 6450 1650
Wire Wire Line
	7200 1600 7200 1650
Connection ~ 7200 1650
Wire Wire Line
	7200 1650 6800 1650
Wire Wire Line
	7600 1600 7600 1650
Connection ~ 7600 1650
Wire Wire Line
	7600 1650 7200 1650
Wire Wire Line
	8000 1600 8000 1650
Connection ~ 8000 1650
Wire Wire Line
	8000 1650 7600 1650
Wire Wire Line
	8400 1600 8400 1650
Connection ~ 8400 1650
Wire Wire Line
	8400 1650 8000 1650
Wire Wire Line
	6100 1300 6100 1350
Connection ~ 6100 1350
$Comp
L power:GND #PWR?
U 1 1 61550B64
P 6100 1700
AR Path="/61550B64" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/61550B64" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 1450 50  0001 C CNN
F 1 "GND" H 6105 1527 50  0000 C CNN
F 2 "" H 6100 1700 50  0001 C CNN
F 3 "" H 6100 1700 50  0001 C CNN
	1    6100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1650 6100 1700
Connection ~ 6100 1650
Text Label 4200 3650 0    50   ~ 0
PB2_BOOT1
Connection ~ 5000 4150
Wire Wire Line
	5000 4150 4200 4150
Connection ~ 4750 4050
Wire Wire Line
	4200 4050 4750 4050
Wire Wire Line
	5000 4150 5200 4150
Text HLabel 5200 4150 2    50   Input ~ 0
PB7_SDA
Text HLabel 5200 4050 2    50   Input ~ 0
PB6_SCL
Wire Wire Line
	4750 4050 5200 4050
Connection ~ 5000 3750
Wire Wire Line
	5000 3750 5000 3800
Wire Wire Line
	5000 3750 5000 3700
Wire Wire Line
	4750 3750 5000 3750
Wire Wire Line
	4750 3800 4750 3750
Wire Wire Line
	5000 4150 5000 4000
Wire Wire Line
	4750 4050 4750 4000
$Comp
L Device:R_Small R?
U 1 1 612B7888
P 4750 3900
AR Path="/612B7888" Ref="R?"  Part="1" 
AR Path="/5EB0C492/612B7888" Ref="R?"  Part="1" 
AR Path="/612AA714/612B7888" Ref="R?"  Part="1" 
F 0 "R?" H 4600 3975 50  0000 L CNN
F 1 "4.7k" H 4550 3875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
F 4 "A129757CT-ND" H 4750 3900 50  0001 C CNN "Digikey"
F 5 "C17673" H 4750 3900 50  0001 C CNN "JLCPCB"
F 6 "C17673" H 4750 3900 50  0001 C CNN "LCSC"
F 7 "71-CRCW08054K70FKEAC" H 4750 3900 50  0001 C CNN "Mouser"
	1    4750 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 612B787E
P 5000 3900
AR Path="/612B787E" Ref="R?"  Part="1" 
AR Path="/5EB0C492/612B787E" Ref="R?"  Part="1" 
AR Path="/612AA714/612B787E" Ref="R?"  Part="1" 
F 0 "R?" H 4825 3975 50  0000 L CNN
F 1 "4.7k" H 4775 3875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5000 3900 50  0001 C CNN
F 3 "" H 5000 3900 50  0001 C CNN
F 4 "A129757CT-ND" H 5000 3900 50  0001 C CNN "Digikey"
F 5 "C17673" H 5000 3900 50  0001 C CNN "JLCPCB"
F 6 "C17673" H 5000 3900 50  0001 C CNN "LCSC"
F 7 "71-CRCW08054K70FKEAC" H 5000 3900 50  0001 C CNN "Mouser"
	1    5000 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 612B7871
P 5000 3700
AR Path="/5EB0C492/612B7871" Ref="#PWR?"  Part="1" 
AR Path="/612B7871" Ref="#PWR?"  Part="1" 
AR Path="/612AA714/612B7871" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 3550 50  0001 C CNN
F 1 "+3.3V" H 5015 3873 50  0000 C CNN
F 2 "" H 5000 3700 50  0001 C CNN
F 3 "" H 5000 3700 50  0001 C CNN
	1    5000 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 3300 8800 3350
$Comp
L power:GND #PWR?
U 1 1 612B7910
P 8800 3350
F 0 "#PWR?" H 8800 3100 50  0001 C CNN
F 1 "GND" H 8805 3177 50  0000 C CNN
F 2 "" H 8800 3350 50  0001 C CNN
F 3 "" H 8800 3350 50  0001 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 612B789C
P 8800 3200
F 0 "R?" H 8859 3246 50  0000 L CNN
F 1 "10k" H 8859 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8800 3200 50  0001 C CNN
F 3 "" H 8800 3200 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" H 8800 3200 50  0001 C CNN "Digikey"
F 5 "C17414" H 8800 3200 50  0001 C CNN "JLCPCB"
F 6 "C115295" H 8800 3200 50  0001 C CNN "LCSC"
F 7 "71-CRCW080510K0FKEAC" H 8800 3200 50  0001 C CNN "Mouser"
	1    8800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3250 2400 3250
Wire Wire Line
	2400 3150 1450 3150
Wire Notes Line
	1100 1050 5700 1050
Wire Notes Line
	5700 1050 5700 7300
Wire Notes Line
	5700 7300 1100 7300
Wire Notes Line
	1100 7300 1100 1050
Text Notes 1100 1050 0    50   ~ 0
STM32
$EndSCHEMATC
