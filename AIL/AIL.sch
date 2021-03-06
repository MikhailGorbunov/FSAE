EESchema Schematic File Version 4
LIBS:AIL-cache
EELAYER 29 0
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
L Regulator_Linear:LR8K4-G U2
U 1 1 5D700949
P 5400 3850
F 0 "U2" H 5400 4117 50  0000 C CNN
F 1 "LR8K4-G" H 5400 4026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 5400 3400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005399B.pdf" H 5400 3850 50  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4300 5400 4250
Wire Wire Line
	5900 4250 5400 4250
Connection ~ 5400 4250
Wire Wire Line
	5400 4250 5400 4150
Wire Wire Line
	5800 3850 5900 3850
Wire Wire Line
	5900 3850 5900 3950
Wire Wire Line
	4950 4050 4950 3850
Connection ~ 4950 3850
Wire Wire Line
	4950 3850 5000 3850
Wire Wire Line
	4950 4350 4950 4600
Connection ~ 4950 4600
Wire Wire Line
	4950 4600 5400 4600
Connection ~ 5400 4600
Connection ~ 5900 3850
$Comp
L Device:R R4
U 1 1 5D700955
P 5400 4450
F 0 "R4" H 5330 4404 50  0000 R CNN
F 1 "47k" H 5330 4495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 4450 50  0001 C CNN
F 3 "~" H 5400 4450 50  0001 C CNN
	1    5400 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5D70094F
P 5900 4100
F 0 "R3" H 5830 4054 50  0000 R CNN
F 1 "6k04" H 5830 4145 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5830 4100 50  0001 C CNN
F 3 "~" H 5900 4100 50  0001 C CNN
	1    5900 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5D701FDA
P 4950 4200
F 0 "C2" H 5065 4246 50  0000 L CNN
F 1 "1uF" H 5065 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4988 4050 50  0001 C CNN
F 3 "~" H 4950 4200 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4250 2600 4600
Wire Wire Line
	2350 4250 2600 4250
Wire Wire Line
	2600 4150 2600 3850
Wire Wire Line
	2350 4150 2600 4150
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D703D5B
P 2150 4150
F 0 "J1" H 2258 4331 50  0000 C CNN
F 1 "HV-IN" H 2258 4240 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-02A_2x01_P4.20mm_Vertical" H 2150 4150 50  0001 C CNN
F 3 "~" H 2150 4150 50  0001 C CNN
	1    2150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3850 3050 3850
$Comp
L Device:D D1
U 1 1 5D702C27
P 3200 3850
F 0 "D1" H 3200 3634 50  0000 C CNN
F 1 "D" H 3200 3725 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 3200 3850 50  0001 C CNN
F 3 "~" H 3200 3850 50  0001 C CNN
	1    3200 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5D6FE735
P 2750 3850
F 0 "F1" V 2525 3850 50  0000 C CNN
F 1 "Polyfuse" V 2616 3850 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2800 3650 50  0001 L CNN
F 3 "~" H 2750 3850 50  0001 C CNN
	1    2750 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3850 3500 3850
Wire Wire Line
	3500 3850 3650 3850
Connection ~ 3500 3850
Wire Wire Line
	3500 4050 3500 3850
Wire Wire Line
	2600 4600 3500 4600
Connection ~ 3500 4600
Wire Wire Line
	3500 4350 3500 4600
$Comp
L Device:C C1
U 1 1 5D7014C7
P 3500 4200
F 0 "C1" H 3615 4246 50  0000 L CNN
F 1 "10n" H 3615 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 4050 50  0001 C CNN
F 3 "~" H 3500 4200 50  0001 C CNN
	1    3500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3850 4550 3850
Connection ~ 4550 3850
Wire Wire Line
	4550 3850 4550 3950
$Comp
L Device:R R1
U 1 1 5D6FBEC4
P 4550 4100
F 0 "R1" H 4480 4054 50  0000 R CNN
F 1 "6k04" H 4480 4145 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4480 4100 50  0001 C CNN
F 3 "~" H 4550 4100 50  0001 C CNN
	1    4550 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4250 4050 4150
Wire Wire Line
	4050 4300 4050 4250
Connection ~ 4050 4250
Wire Wire Line
	4550 4250 4050 4250
Wire Wire Line
	3500 4600 4050 4600
Wire Wire Line
	4050 4600 4950 4600
Connection ~ 4050 4600
$Comp
L Device:R R2
U 1 1 5D6FCA7D
P 4050 4450
F 0 "R2" H 3980 4404 50  0000 R CNN
F 1 "202k" H 3980 4495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3980 4450 50  0001 C CNN
F 3 "~" H 4050 4450 50  0001 C CNN
	1    4050 4450
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LR8K4-G U1
U 1 1 5D6FB147
P 4050 3850
F 0 "U1" H 4050 4117 50  0000 C CNN
F 1 "LR8K4-G" H 4050 4026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 4050 3400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005399B.pdf" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4100 6850 3850
Wire Wire Line
	7100 4100 6850 4100
Wire Wire Line
	6850 4200 7100 4200
Wire Wire Line
	6850 4600 6850 4200
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5D704BAB
P 7300 4200
F 0 "J2" H 7272 4082 50  0000 R CNN
F 1 "AIL-OUT" H 7272 4173 50  0000 R CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-02A_2x01_P4.20mm_Vertical" H 7300 4200 50  0001 C CNN
F 3 "~" H 7300 4200 50  0001 C CNN
	1    7300 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5D70D852
P 6450 4200
F 0 "C3" H 6565 4246 50  0000 L CNN
F 1 "1uF" H 6565 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6488 4050 50  0001 C CNN
F 3 "~" H 6450 4200 50  0001 C CNN
	1    6450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4050 6450 3850
Wire Wire Line
	6450 3850 5900 3850
Wire Wire Line
	6450 4350 6450 4600
Wire Wire Line
	5400 4600 6450 4600
Connection ~ 6450 4600
Wire Wire Line
	6450 4600 6850 4600
$Comp
L Device:D D2
U 1 1 5D70F355
P 4050 3400
F 0 "D2" H 4050 3616 50  0000 C CNN
F 1 "D" H 4050 3525 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 4050 3400 50  0001 C CNN
F 3 "~" H 4050 3400 50  0001 C CNN
	1    4050 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5D70F8E7
P 5400 3400
F 0 "D3" H 5400 3616 50  0000 C CNN
F 1 "D" H 5400 3525 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 5400 3400 50  0001 C CNN
F 3 "~" H 5400 3400 50  0001 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3400 4550 3400
Wire Wire Line
	4550 3400 4550 3850
Wire Wire Line
	3900 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3850
Wire Wire Line
	5250 3400 4950 3400
Wire Wire Line
	4950 3400 4950 3850
Wire Wire Line
	5550 3400 5900 3400
Wire Wire Line
	5900 3400 5900 3850
Wire Wire Line
	4550 3850 4950 3850
Text Notes 4650 3850 0    50   ~ 0
42V
Text Notes 6050 3850 0    50   ~ 0
12V
Text Notes 3550 3150 0    50   ~ 0
Pre-regulator sets\nactivation threshold = 60V\nand keeps power-dissipation\nmanageable
Text Notes 2700 4950 0    50   ~ 0
LR8 V_drop_out = 12V\nU1 active only if HV-IN >= 60V
$Comp
L Device:R R5
U 1 1 5D713B07
P 6650 3850
F 0 "R5" V 6857 3850 50  0000 C CNN
F 1 "PROV" V 6766 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6580 3850 50  0001 C CNN
F 3 "~" H 6650 3850 50  0001 C CNN
	1    6650 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3850 6450 3850
Connection ~ 6450 3850
Wire Wire Line
	6800 3850 6850 3850
Text Notes 6450 3550 0    50   ~ 0
Provisional current-limiting resistor\nallows commercial 12V LED modules\nto be used at output with reduced current
$EndSCHEMATC
