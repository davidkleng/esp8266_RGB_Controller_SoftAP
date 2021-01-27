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
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 60049200
P 3650 2850
F 0 "U1" H 3650 3937 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 3650 3831 60  0000 C CNN
F 2 "ESP8266:NodeMCU-LoLinV3" H 3050 2000 60  0001 C CNN
F 3 "" H 3050 2000 60  0000 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Text GLabel 4550 2150 2    50   Input ~ 0
RED
Text GLabel 5750 3050 1    50   Input ~ 0
RED
Text GLabel 4550 2250 2    50   Input ~ 0
GREEN
Text GLabel 4550 2350 2    50   Input ~ 0
BLUE
$Comp
L power:GND #PWR06
U 1 1 60053CFF
P 6650 3850
F 0 "#PWR06" H 6650 3600 50  0001 C CNN
F 1 "GND" H 6655 3677 50  0000 C CNN
F 2 "" H 6650 3850 50  0001 C CNN
F 3 "" H 6650 3850 50  0001 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60055AF0
P 6150 2900
F 0 "R1" H 6220 2946 50  0000 L CNN
F 1 "10k" H 6220 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6080 2900 50  0001 C CNN
F 3 "~" H 6150 2900 50  0001 C CNN
	1    6150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2150 4550 2150
Wire Wire Line
	4450 2250 4550 2250
Wire Wire Line
	4450 2350 4550 2350
$Comp
L Regulator_Linear:AP1117-33 U2
U 1 1 60062034
P 6550 1250
F 0 "U2" H 6550 1492 50  0000 C CNN
F 1 "AP1117-33" H 6550 1401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 6550 1450 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 6650 1000 50  0001 C CNN
	1    6550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60063546
P 5750 1400
F 0 "C1" H 5865 1446 50  0000 L CNN
F 1 "100nF" H 5865 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5788 1250 50  0001 C CNN
F 3 "~" H 5750 1400 50  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 600642A4
P 7150 1400
F 0 "C2" H 7265 1446 50  0000 L CNN
F 1 "100nF" H 7265 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7188 1250 50  0001 C CNN
F 3 "~" H 7150 1400 50  0001 C CNN
	1    7150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 60064A00
P 7650 1400
F 0 "C3" H 7768 1446 50  0000 L CNN
F 1 "10uF" H 7768 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7688 1250 50  0001 C CNN
F 3 "~" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1250 5750 1250
Wire Wire Line
	6850 1250 7150 1250
Wire Wire Line
	7150 1250 7650 1250
Connection ~ 7150 1250
Wire Wire Line
	5750 1550 6550 1550
Wire Wire Line
	6550 1550 7150 1550
Connection ~ 6550 1550
Wire Wire Line
	7150 1550 7650 1550
Connection ~ 7150 1550
$Comp
L power:GND #PWR09
U 1 1 6006A754
P 7650 1600
F 0 "#PWR09" H 7650 1350 50  0001 C CNN
F 1 "GND" H 7655 1427 50  0000 C CNN
F 2 "" H 7650 1600 50  0001 C CNN
F 3 "" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1550 7650 1600
Connection ~ 7650 1550
$Comp
L pspice:DIODE D1
U 1 1 6006D20F
P 5350 1250
F 0 "D1" H 5350 1515 50  0000 C CNN
F 1 "DIODE" H 5350 1424 50  0000 C CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 5350 1250 50  0001 C CNN
F 3 "~" H 5350 1250 50  0001 C CNN
	1    5350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1250 5750 1250
Connection ~ 5750 1250
$Comp
L power:+3.3V #PWR08
U 1 1 6006F1B9
P 7650 1150
F 0 "#PWR08" H 7650 1000 50  0001 C CNN
F 1 "+3.3V" H 7665 1323 50  0000 C CNN
F 2 "" H 7650 1150 50  0001 C CNN
F 3 "" H 7650 1150 50  0001 C CNN
	1    7650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6007064F
P 2400 2700
F 0 "#PWR01" H 2400 2550 50  0001 C CNN
F 1 "+3.3V" H 2415 2873 50  0000 C CNN
F 2 "" H 2400 2700 50  0001 C CNN
F 3 "" H 2400 2700 50  0001 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 60071007
P 4700 2650
F 0 "#PWR04" H 4700 2500 50  0001 C CNN
F 1 "+3.3V" H 4715 2823 50  0000 C CNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1150 7650 1250
Connection ~ 7650 1250
Wire Wire Line
	2850 3150 2400 3150
Wire Wire Line
	2400 3150 2400 2700
Wire Wire Line
	4450 3550 4700 3550
Wire Wire Line
	4450 2650 4700 2650
Wire Wire Line
	4700 2650 4700 3550
Connection ~ 4700 2650
$Comp
L power:GND #PWR03
U 1 1 60078828
P 4600 3800
F 0 "#PWR03" H 4600 3550 50  0001 C CNN
F 1 "GND" H 4605 3627 50  0000 C CNN
F 2 "" H 4600 3800 50  0001 C CNN
F 3 "" H 4600 3800 50  0001 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 600790F5
P 2650 3800
F 0 "#PWR02" H 2650 3550 50  0001 C CNN
F 1 "GND" H 2655 3627 50  0000 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2750 4600 2750
Wire Wire Line
	4600 2750 4600 3450
Wire Wire Line
	4450 3450 4600 3450
Connection ~ 4600 3450
Wire Wire Line
	4600 3450 4600 3800
Wire Wire Line
	2650 3800 2650 3450
Wire Wire Line
	2650 3050 2850 3050
Wire Wire Line
	2850 3450 2650 3450
Connection ~ 2650 3450
Wire Wire Line
	2650 3450 2650 3050
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6008DB75
P 8450 1400
F 0 "J1" H 8530 1392 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8530 1301 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8450 1400 50  0001 C CNN
F 3 "~" H 8450 1400 50  0001 C CNN
	1    8450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 6008FE15
P 8200 1300
F 0 "#PWR011" H 8200 1150 50  0001 C CNN
F 1 "VCC" H 8215 1473 50  0000 C CNN
F 2 "" H 8200 1300 50  0001 C CNN
F 3 "" H 8200 1300 50  0001 C CNN
	1    8200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 6009071E
P 4900 1100
F 0 "#PWR05" H 4900 950 50  0001 C CNN
F 1 "VCC" H 4915 1273 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1400 8200 1400
Wire Wire Line
	8250 1500 8200 1500
Wire Wire Line
	8200 1500 8200 1550
Wire Wire Line
	4900 1100 4900 1250
Wire Wire Line
	4900 1250 5150 1250
$Comp
L power:GND #PWR012
U 1 1 600922C5
P 8200 1550
F 0 "#PWR012" H 8200 1300 50  0001 C CNN
F 1 "GND" H 8205 1377 50  0000 C CNN
F 2 "" H 8200 1550 50  0001 C CNN
F 3 "" H 8200 1550 50  0001 C CNN
	1    8200 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 60119400
P 6050 3450
F 0 "Q2" H 6241 3496 50  0000 L CNN
F 1 "BC547" H 6241 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6050 3450 50  0001 L CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 6004A755
P 6550 3150
F 0 "Q1" H 6754 3196 50  0000 L CNN
F 1 "IRF540N" H 6754 3105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 6800 3075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6550 3150 50  0001 L CNN
	1    6550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3350 6650 3850
Wire Wire Line
	6150 3050 6150 3150
Wire Wire Line
	6350 3150 6150 3150
Connection ~ 6150 3150
Wire Wire Line
	6150 3150 6150 3250
$Comp
L Device:R R2
U 1 1 6012FEFE
P 5750 3300
F 0 "R2" H 5820 3346 50  0000 L CNN
F 1 "1k" H 5820 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5680 3300 50  0001 C CNN
F 3 "~" H 5750 3300 50  0001 C CNN
	1    5750 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3450 5850 3450
$Comp
L power:GND #PWR0101
U 1 1 60132E8B
P 6150 3850
F 0 "#PWR0101" H 6150 3600 50  0001 C CNN
F 1 "GND" H 6155 3677 50  0000 C CNN
F 2 "" H 6150 3850 50  0001 C CNN
F 3 "" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3650 6150 3850
$Comp
L power:VCC #PWR0102
U 1 1 60135CDE
P 6150 2650
F 0 "#PWR0102" H 6150 2500 50  0001 C CNN
F 1 "VCC" H 6165 2823 50  0000 C CNN
F 2 "" H 6150 2650 50  0001 C CNN
F 3 "" H 6150 2650 50  0001 C CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2550 6150 2650
Connection ~ 6150 2650
Wire Wire Line
	6150 2650 6150 2750
Text GLabel 7350 3050 1    50   Input ~ 0
GREEN
$Comp
L power:GND #PWR0103
U 1 1 6013D410
P 8250 3850
F 0 "#PWR0103" H 8250 3600 50  0001 C CNN
F 1 "GND" H 8255 3677 50  0000 C CNN
F 2 "" H 8250 3850 50  0001 C CNN
F 3 "" H 8250 3850 50  0001 C CNN
	1    8250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6013D41A
P 7750 2900
F 0 "R4" H 7820 2946 50  0000 L CNN
F 1 "10k" H 7820 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 2900 50  0001 C CNN
F 3 "~" H 7750 2900 50  0001 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 6013D425
P 7650 3450
F 0 "Q3" H 7841 3496 50  0000 L CNN
F 1 "BC547" H 7841 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7850 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 7650 3450 50  0001 L CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q4
U 1 1 6013D42F
P 8150 3150
F 0 "Q4" H 8354 3196 50  0000 L CNN
F 1 "IRF540N" H 8354 3105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 8400 3075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 8150 3150 50  0001 L CNN
	1    8150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3350 8250 3850
Wire Wire Line
	7750 3050 7750 3150
Wire Wire Line
	7950 3150 7750 3150
Connection ~ 7750 3150
Wire Wire Line
	7750 3150 7750 3250
$Comp
L Device:R R3
U 1 1 6013D43E
P 7350 3300
F 0 "R3" H 7420 3346 50  0000 L CNN
F 1 "1k" H 7420 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7280 3300 50  0001 C CNN
F 3 "~" H 7350 3300 50  0001 C CNN
	1    7350 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 3450 7450 3450
$Comp
L power:GND #PWR0104
U 1 1 6013D44A
P 7750 3850
F 0 "#PWR0104" H 7750 3600 50  0001 C CNN
F 1 "GND" H 7755 3677 50  0000 C CNN
F 2 "" H 7750 3850 50  0001 C CNN
F 3 "" H 7750 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3650 7750 3850
$Comp
L power:VCC #PWR0105
U 1 1 6013D455
P 7750 2650
F 0 "#PWR0105" H 7750 2500 50  0001 C CNN
F 1 "VCC" H 7765 2823 50  0000 C CNN
F 2 "" H 7750 2650 50  0001 C CNN
F 3 "" H 7750 2650 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2550 7750 2650
Connection ~ 7750 2650
Wire Wire Line
	7750 2650 7750 2750
Wire Wire Line
	5750 3050 5750 3150
Wire Wire Line
	7350 3150 7350 3050
Text GLabel 9000 3050 1    50   Input ~ 0
BLUE
$Comp
L power:GND #PWR0106
U 1 1 6017F7CE
P 9900 3850
F 0 "#PWR0106" H 9900 3600 50  0001 C CNN
F 1 "GND" H 9905 3677 50  0000 C CNN
F 2 "" H 9900 3850 50  0001 C CNN
F 3 "" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6017F7D8
P 9400 2900
F 0 "R6" H 9470 2946 50  0000 L CNN
F 1 "10k" H 9470 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9330 2900 50  0001 C CNN
F 3 "~" H 9400 2900 50  0001 C CNN
	1    9400 2900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 6017F7E3
P 9300 3450
F 0 "Q5" H 9491 3496 50  0000 L CNN
F 1 "BC547" H 9491 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9500 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 9300 3450 50  0001 L CNN
	1    9300 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q6
U 1 1 6017F7ED
P 9800 3150
F 0 "Q6" H 10004 3196 50  0000 L CNN
F 1 "IRF540N" H 10004 3105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 10050 3075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9800 3150 50  0001 L CNN
	1    9800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3350 9900 3850
Wire Wire Line
	9400 3050 9400 3150
Wire Wire Line
	9600 3150 9400 3150
Connection ~ 9400 3150
Wire Wire Line
	9400 3150 9400 3250
$Comp
L Device:R R5
U 1 1 6017F7FC
P 9000 3300
F 0 "R5" H 9070 3346 50  0000 L CNN
F 1 "1k" H 9070 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8930 3300 50  0001 C CNN
F 3 "~" H 9000 3300 50  0001 C CNN
	1    9000 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3450 9100 3450
$Comp
L power:GND #PWR0107
U 1 1 6017F807
P 9400 3850
F 0 "#PWR0107" H 9400 3600 50  0001 C CNN
F 1 "GND" H 9405 3677 50  0000 C CNN
F 2 "" H 9400 3850 50  0001 C CNN
F 3 "" H 9400 3850 50  0001 C CNN
	1    9400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3650 9400 3850
$Comp
L power:VCC #PWR0108
U 1 1 6017F812
P 9400 2650
F 0 "#PWR0108" H 9400 2500 50  0001 C CNN
F 1 "VCC" H 9415 2823 50  0000 C CNN
F 2 "" H 9400 2650 50  0001 C CNN
F 3 "" H 9400 2650 50  0001 C CNN
	1    9400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2550 9400 2650
Connection ~ 9400 2650
Wire Wire Line
	9400 2650 9400 2750
Wire Wire Line
	9000 3150 9000 3050
Wire Wire Line
	6650 2200 6650 2950
Wire Wire Line
	8250 2300 8250 2950
Wire Wire Line
	9900 2400 9900 2950
$Comp
L power:VCC #PWR013
U 1 1 6009B178
P 10500 2700
F 0 "#PWR013" H 10500 2550 50  0001 C CNN
F 1 "VCC" H 10515 2873 50  0000 C CNN
F 2 "" H 10500 2700 50  0001 C CNN
F 3 "" H 10500 2700 50  0001 C CNN
	1    10500 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 6008EA99
P 10300 2300
F 0 "J2" H 10380 2292 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 10380 2201 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 10300 2300 50  0001 C CNN
F 3 "~" H 10300 2300 50  0001 C CNN
	1    10300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2200 10100 2200
Wire Wire Line
	8250 2300 10100 2300
Wire Wire Line
	10100 2400 9900 2400
Wire Wire Line
	10500 2700 10000 2700
Wire Wire Line
	10000 2700 10000 2500
Wire Wire Line
	10000 2500 10100 2500
Wire Wire Line
	8200 1300 8200 1400
$EndSCHEMATC
