EESchema Schematic File Version 4
LIBS:Precharge-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
L Device:R R?
U 1 1 5E2AA584
P 12300 2850
F 0 "R?" V 12093 2850 50  0000 C CNN
F 1 "PRECHARGE" V 12184 2850 50  0000 C CNN
F 2 "" V 12230 2850 50  0001 C CNN
F 3 "~" H 12300 2850 50  0001 C CNN
	1    12300 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E2B849B
P 6350 2300
F 0 "J?" H 6458 2481 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6458 2390 50  0000 C CNN
F 2 "" H 6350 2300 50  0001 C CNN
F 3 "~" H 6350 2300 50  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2400 7500 2400
$Comp
L Device:D D?
U 1 1 5E2BB9EB
P 7800 3250
F 0 "D?" H 7800 3466 50  0000 C CNN
F 1 "D" H 7800 3375 50  0000 C CNN
F 2 "" H 7800 3250 50  0001 C CNN
F 3 "~" H 7800 3250 50  0001 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3250 7350 3250
Wire Wire Line
	7350 3250 7350 2800
Wire Wire Line
	7350 2800 7500 2800
Text Notes 11250 4950 0    50   ~ 0
ToDo:\nPrecharge resistor select\noptocoupler select
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 5E2E89B6
P 12200 3450
F 0 "Q?" V 12543 3450 50  0000 C CNN
F 1 "Q_NMOS_GDS" V 12452 3450 50  0000 C CNN
F 2 "" H 12400 3550 50  0001 C CNN
F 3 "~" H 12200 3450 50  0001 C CNN
	1    12200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E2ED77C
P 12300 4550
F 0 "C?" H 12418 4596 50  0000 L CNN
F 1 "CP" H 12418 4505 50  0000 L CNN
F 2 "" H 12338 4400 50  0001 C CNN
F 3 "~" H 12300 4550 50  0001 C CNN
	1    12300 4550
	1    0    0    -1  
$EndComp
$Comp
L precharge-library:RY531012 K??
U 1 1 5E2DA411
P 7800 2600
F 0 "K??" H 7800 2033 50  0000 C CNN
F 1 "RY531012" H 7800 2124 50  0000 C CNN
F 2 "" V 7800 2600 50  0001 C CNN
F 3 "" V 7800 2600 50  0001 C CNN
	1    7800 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 2800 8100 3250
Wire Wire Line
	7500 2400 7500 2300
Wire Wire Line
	12300 4900 12300 4700
Wire Wire Line
	8100 2400 8450 2400
Wire Wire Line
	12300 3650 12300 3900
Connection ~ 12300 3900
Wire Wire Line
	12300 3000 12300 3250
$Comp
L power:VCOM #PWR?
U 1 1 5E303134
P 12300 3900
F 0 "#PWR?" H 12300 3750 50  0001 C CNN
F 1 "VCOM" V 12317 4028 50  0000 L CNN
F 2 "" H 12300 3900 50  0001 C CNN
F 3 "" H 12300 3900 50  0001 C CNN
	1    12300 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	12300 2400 12300 2700
Wire Wire Line
	11850 3450 11950 3450
$Comp
L precharge-library:GLV- #PWR?
U 1 1 5E3099D1
P 950 1400
F 0 "#PWR?" H 950 1250 50  0001 C CNN
F 1 "GLV-" H 965 1573 50  0000 C CNN
F 2 "" H 950 1400 50  0001 C CNN
F 3 "" H 950 1400 50  0001 C CNN
	1    950  1400
	0    -1   -1   0   
$EndComp
$Comp
L precharge-library:GLV+ #PWR?
U 1 1 5E30CE8D
P 950 1100
F 0 "#PWR?" H 950 950 50  0001 C CNN
F 1 "GLV+" H 965 1273 50  0000 C CNN
F 2 "" H 950 1100 50  0001 C CNN
F 3 "" H 950 1100 50  0001 C CNN
	1    950  1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 5E30DFA0
P 1250 1100
F 0 "D?" H 1250 884 50  0000 C CNN
F 1 "D" H 1250 975 50  0000 C CNN
F 2 "" H 1250 1100 50  0001 C CNN
F 3 "~" H 1250 1100 50  0001 C CNN
	1    1250 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  1100 1100 1100
$Comp
L Device:C C?
U 1 1 5E3100D6
P 2050 1250
F 0 "C?" H 2165 1296 50  0000 L CNN
F 1 "C" H 2165 1205 50  0000 L CNN
F 2 "" H 2088 1100 50  0001 C CNN
F 3 "~" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E314983
P 2600 850
F 0 "#PWR?" H 2600 700 50  0001 C CNN
F 1 "+12V" H 2615 1023 50  0000 C CNN
F 2 "" H 2600 850 50  0001 C CNN
F 3 "" H 2600 850 50  0001 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
Connection ~ 2050 1100
Connection ~ 2050 1400
Wire Wire Line
	7950 3250 8100 3250
$Comp
L Device:R R?
U 1 1 5E32C777
P 7800 3800
F 0 "R?" V 7593 3800 50  0000 C CNN
F 1 "10k" V 7684 3800 50  0000 C CNN
F 2 "" V 7730 3800 50  0001 C CNN
F 3 "~" H 7800 3800 50  0001 C CNN
	1    7800 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E315C8C
P 11700 3450
F 0 "R?" V 11493 3450 50  0000 C CNN
F 1 "100" V 11584 3450 50  0000 C CNN
F 2 "" V 11630 3450 50  0001 C CNN
F 3 "~" H 11700 3450 50  0001 C CNN
	1    11700 3450
	0    -1   -1   0   
$EndComp
Text Label 7450 3550 2    50   ~ 0
relay
Text Label 10200 3250 2    50   ~ 0
fet
$Comp
L MCU_Microchip_ATmega:ATmega328-AU U?
U 1 1 5E339A84
P 7450 7450
F 0 "U?" H 7100 7600 50  0000 C CNN
F 1 "ATmega328-AU" H 7350 7500 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7450 7450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7450 7450 50  0001 C CNN
	1    7450 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E33F05C
P 2100 4550
F 0 "R?" V 1893 4550 50  0000 C CNN
F 1 "10k" V 1984 4550 50  0000 C CNN
F 2 "" V 2030 4550 50  0001 C CNN
F 3 "~" H 2100 4550 50  0001 C CNN
	1    2100 4550
	0    -1   -1   0   
$EndComp
Text Label 1700 4550 2    50   ~ 0
EN
Wire Wire Line
	1700 4550 1950 4550
Text Notes 2450 4400 0    50   ~ 0
ENABLE input
Text Label 3750 4550 0    50   ~ 0
EN_5V
$Comp
L precharge-library:GLV+ #PWR?
U 1 1 5E354706
P 7350 2800
F 0 "#PWR?" H 7350 2650 50  0001 C CNN
F 1 "GLV+" H 7365 2973 50  0000 C CNN
F 2 "" H 7350 2800 50  0001 C CNN
F 3 "" H 7350 2800 50  0001 C CNN
	1    7350 2800
	0    -1   -1   0   
$EndComp
Connection ~ 7350 2800
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E3697A2
P 13150 4500
F 0 "J?" H 13258 4681 50  0000 C CNN
F 1 "Conn_01x02_Male" H 13258 4590 50  0000 C CNN
F 2 "" H 13150 4500 50  0001 C CNN
F 3 "~" H 13150 4500 50  0001 C CNN
	1    13150 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12950 4500 12600 4500
Wire Wire Line
	12600 4500 12600 4350
Wire Wire Line
	12600 4350 12300 4350
Connection ~ 12300 4350
Wire Wire Line
	12300 4350 12300 4400
Wire Wire Line
	12300 4900 12600 4900
Wire Wire Line
	12600 4900 12600 4600
Wire Wire Line
	12600 4600 12950 4600
Wire Wire Line
	3750 1400 3750 1150
$Comp
L Device:C C?
U 1 1 5E384B0E
P 4200 1100
F 0 "C?" H 4315 1146 50  0000 L CNN
F 1 "1u" H 4315 1055 50  0000 L CNN
F 2 "" H 4238 950 50  0001 C CNN
F 3 "~" H 4200 1100 50  0001 C CNN
	1    4200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1400 4200 1400
Wire Wire Line
	4200 1400 4200 1250
Connection ~ 3750 1400
Wire Wire Line
	4050 850  4200 850 
Wire Wire Line
	4200 850  4200 950 
$Comp
L power:+5V #PWR?
U 1 1 5E388C77
P 4200 850
F 0 "#PWR?" H 4200 700 50  0001 C CNN
F 1 "+5V" H 4215 1023 50  0000 C CNN
F 2 "" H 4200 850 50  0001 C CNN
F 3 "" H 4200 850 50  0001 C CNN
	1    4200 850 
	1    0    0    -1  
$EndComp
Connection ~ 4200 850 
$Comp
L Regulator_Linear:AZ1117-5.0 U?
U 1 1 5E3897B9
P 3750 850
F 0 "U?" H 3750 1092 50  0000 C CNN
F 1 "AZ1117-5.0" H 3750 1001 50  0000 C CNN
F 2 "" H 3750 1100 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1100 2600 850 
Wire Wire Line
	2600 850  3450 850 
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5E39A5D6
P 10250 7450
F 0 "J?" H 10358 7831 50  0000 C CNN
F 1 "ISP" H 10358 7740 50  0000 C CNN
F 2 "" H 10250 7450 50  0001 C CNN
F 3 "~" H 10250 7450 50  0001 C CNN
	1    10250 7450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E39C6E4
P 7450 5800
F 0 "#PWR?" H 7450 5650 50  0001 C CNN
F 1 "+5V" H 7465 5973 50  0000 C CNN
F 2 "" H 7450 5800 50  0001 C CNN
F 3 "" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5950 7450 5850
$Comp
L power:VCOM #PWR?
U 1 1 5E3A0B87
P 7400 9100
F 0 "#PWR?" H 7400 8950 50  0001 C CNN
F 1 "VCOM" V 7417 9228 50  0000 L CNN
F 2 "" H 7400 9100 50  0001 C CNN
F 3 "" H 7400 9100 50  0001 C CNN
	1    7400 9100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 9100 7450 9100
Wire Wire Line
	7450 9100 7450 8950
Wire Wire Line
	7450 5850 7550 5850
Wire Wire Line
	7550 5850 7550 5950
Connection ~ 7450 5850
Wire Wire Line
	7450 5850 7450 5800
Wire Wire Line
	6850 6250 6750 6250
Wire Wire Line
	6750 6250 6750 5850
Wire Wire Line
	6750 5850 7450 5850
Text Label 8200 7750 0    50   ~ 0
~RESET
Text Label 9850 7450 2    50   ~ 0
~RESET
Wire Wire Line
	8050 7750 8200 7750
Text Label 8200 6750 0    50   ~ 0
SCK
Text Label 8200 6650 0    50   ~ 0
MISO
Text Label 8200 6550 0    50   ~ 0
MOSI
Wire Wire Line
	9850 7450 10050 7450
Wire Wire Line
	8050 6750 8200 6750
Wire Wire Line
	8200 6650 8050 6650
Wire Wire Line
	8050 6550 8200 6550
$Comp
L power:VCOM #PWR?
U 1 1 5E3B8EFB
P 9600 7550
F 0 "#PWR?" H 9600 7400 50  0001 C CNN
F 1 "VCOM" V 9617 7678 50  0000 L CNN
F 2 "" H 9600 7550 50  0001 C CNN
F 3 "" H 9600 7550 50  0001 C CNN
	1    9600 7550
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E3B92FD
P 9600 7750
F 0 "#PWR?" H 9600 7600 50  0001 C CNN
F 1 "+5V" V 9615 7878 50  0000 L CNN
F 2 "" H 9600 7750 50  0001 C CNN
F 3 "" H 9600 7750 50  0001 C CNN
	1    9600 7750
	0    -1   1    0   
$EndComp
Wire Wire Line
	9600 7550 10050 7550
Wire Wire Line
	9600 7750 10050 7750
Text Label 9850 7250 2    50   ~ 0
MISO
Text Label 9850 7350 2    50   ~ 0
SCK
Text Label 9850 7650 2    50   ~ 0
MOSI
Wire Wire Line
	10050 7650 9850 7650
Wire Wire Line
	10050 7350 9850 7350
Wire Wire Line
	10050 7250 9850 7250
Wire Wire Line
	9000 8550 8850 8550
Wire Wire Line
	8850 8450 9000 8450
Wire Wire Line
	9000 8350 8850 8350
Text Label 9000 8350 0    50   ~ 0
relay
Text Label 9000 8450 0    50   ~ 0
EN_5V
Text Label 9000 8550 0    50   ~ 0
Vts
$Comp
L Regulator_Linear:LR8K4-G U?
U 1 1 5E318BE0
P 9300 1150
F 0 "U?" H 9300 1417 50  0000 C CNN
F 1 "LR8K4-G" H 9300 1326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9300 700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005399B.pdf" H 9300 1150 50  0001 C CNN
	1    9300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1150 8450 1150
Wire Wire Line
	8450 1150 8450 2400
Connection ~ 8450 2400
$Comp
L Device:R R?
U 1 1 5E31C3BC
P 9900 1350
F 0 "R?" V 9693 1350 50  0000 C CNN
F 1 "10k" V 9784 1350 50  0000 C CNN
F 2 "" V 9830 1350 50  0001 C CNN
F 3 "~" H 9900 1350 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E31C873
P 9600 1650
F 0 "R?" V 9393 1650 50  0000 C CNN
F 1 "10k" V 9484 1650 50  0000 C CNN
F 2 "" V 9530 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	0    1    1    0   
$EndComp
$Comp
L power:VCOM #PWR?
U 1 1 5E31CC4F
P 9300 1750
F 0 "#PWR?" H 9300 1600 50  0001 C CNN
F 1 "VCOM" V 9317 1878 50  0000 L CNN
F 2 "" H 9300 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0001 C CNN
	1    9300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1750 9300 1650
Wire Wire Line
	9450 1650 9300 1650
Connection ~ 9300 1650
Wire Wire Line
	9300 1650 9300 1450
Wire Wire Line
	9750 1650 9900 1650
Wire Wire Line
	9900 1650 9900 1500
Wire Wire Line
	9700 1150 9900 1150
Wire Wire Line
	9900 1150 9900 1200
$Comp
L Device:C C?
U 1 1 5E32A084
P 10200 1400
F 0 "C?" H 10315 1446 50  0000 L CNN
F 1 "1u" H 10315 1355 50  0000 L CNN
F 2 "" H 10238 1250 50  0001 C CNN
F 3 "~" H 10200 1400 50  0001 C CNN
	1    10200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1550 10200 1650
Wire Wire Line
	10200 1650 9900 1650
Connection ~ 9900 1650
Wire Wire Line
	9900 1150 10200 1150
Wire Wire Line
	10200 1150 10200 1250
Connection ~ 9900 1150
$Comp
L power:+12P #PWR?
U 1 1 5E336AA3
P 10200 1150
F 0 "#PWR?" H 10200 1000 50  0001 C CNN
F 1 "+12P" H 10215 1323 50  0000 C CNN
F 2 "" H 10200 1150 50  0001 C CNN
F 3 "" H 10200 1150 50  0001 C CNN
	1    10200 1150
	1    0    0    -1  
$EndComp
Connection ~ 10200 1150
$Comp
L Isolator:4N35 U?
U 1 1 5E337AF3
P 11100 3350
F 0 "U?" H 11100 3675 50  0000 C CNN
F 1 "4N32" H 11100 3584 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 10900 3150 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 11100 3350 50  0001 L CNN
	1    11100 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR?
U 1 1 5E33874F
P 11500 3100
F 0 "#PWR?" H 11500 2950 50  0001 C CNN
F 1 "+12P" H 11515 3273 50  0000 C CNN
F 2 "" H 11500 3100 50  0001 C CNN
F 3 "" H 11500 3100 50  0001 C CNN
	1    11500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E362B65
P 11950 3750
F 0 "R?" V 11743 3750 50  0000 C CNN
F 1 "10k" V 11834 3750 50  0000 C CNN
F 2 "" V 11880 3750 50  0001 C CNN
F 3 "~" H 11950 3750 50  0001 C CNN
	1    11950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 3900 12300 3900
Wire Wire Line
	11400 3350 11500 3350
Wire Wire Line
	11500 3350 11500 3100
Wire Wire Line
	11550 3450 11400 3450
$Comp
L Device:R R?
U 1 1 5E382372
P 10550 3250
F 0 "R?" V 10343 3250 50  0000 C CNN
F 1 "220" V 10434 3250 50  0000 C CNN
F 2 "" V 10480 3250 50  0001 C CNN
F 3 "~" H 10550 3250 50  0001 C CNN
	1    10550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 3250 10700 3250
$Comp
L precharge-library:GLV- #PWR?
U 1 1 5E3863D3
P 10800 3600
F 0 "#PWR?" H 10800 3450 50  0001 C CNN
F 1 "GLV-" H 10815 3773 50  0000 C CNN
F 2 "" H 10800 3600 50  0001 C CNN
F 3 "" H 10800 3600 50  0001 C CNN
	1    10800 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 3600 10800 3450
Wire Wire Line
	8450 2400 12300 2400
Wire Wire Line
	2050 1100 2600 1100
Wire Wire Line
	2050 1400 3750 1400
Connection ~ 2600 850 
Wire Wire Line
	10200 3250 10400 3250
Wire Wire Line
	11950 3600 11950 3450
Connection ~ 11950 3450
Wire Wire Line
	11950 3450 12000 3450
$Comp
L precharge-library:GLV- #PWR?
U 1 1 5E3C4990
P 8100 3850
F 0 "#PWR?" H 8100 3700 50  0001 C CNN
F 1 "GLV-" H 8115 4023 50  0000 C CNN
F 2 "" H 8100 3850 50  0001 C CNN
F 3 "" H 8100 3850 50  0001 C CNN
	1    8100 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C9F52
P 2500 4750
F 0 "R?" V 2293 4750 50  0000 C CNN
F 1 "10k" V 2384 4750 50  0000 C CNN
F 2 "" V 2430 4750 50  0001 C CNN
F 3 "~" H 2500 4750 50  0001 C CNN
	1    2500 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5E3CA618
P 2900 4750
F 0 "D?" V 2854 4829 50  0000 L CNN
F 1 "5V" V 2945 4829 50  0000 L CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E3CAE2A
P 3400 4750
F 0 "C?" H 3515 4796 50  0000 L CNN
F 1 "100n" H 3515 4705 50  0000 L CNN
F 2 "" H 3438 4600 50  0001 C CNN
F 3 "~" H 3400 4750 50  0001 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4550 2500 4550
Wire Wire Line
	2500 5000 2900 5000
Wire Wire Line
	3400 5000 3400 4900
Wire Wire Line
	2500 5000 2500 4900
Wire Wire Line
	2900 4900 2900 5000
Connection ~ 2900 5000
Wire Wire Line
	2900 5000 3400 5000
Wire Wire Line
	2500 4600 2500 4550
Connection ~ 2500 4550
Wire Wire Line
	2500 4550 2900 4550
Wire Wire Line
	2900 4600 2900 4550
Connection ~ 2900 4550
Wire Wire Line
	2900 4550 3400 4550
$Comp
L precharge-library:GLV- #PWR?
U 1 1 5E3DBE52
P 2900 5050
F 0 "#PWR?" H 2900 4900 50  0001 C CNN
F 1 "GLV-" H 2915 5223 50  0000 C CNN
F 2 "" H 2900 5050 50  0001 C CNN
F 3 "" H 2900 5050 50  0001 C CNN
	1    2900 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 5050 2900 5000
Wire Wire Line
	3400 4600 3400 4550
Connection ~ 3400 4550
Wire Wire Line
	3400 4550 3750 4550
Text Notes 9550 1850 0    50   ~ 0
ToDo: select resistors
Wire Wire Line
	12300 3900 12300 4350
$Comp
L Device:D D?
U 1 1 5E3F5D9B
P 12250 4150
F 0 "D?" H 12250 4366 50  0000 C CNN
F 1 "D" H 12250 4275 50  0000 C CNN
F 2 "" H 12250 4150 50  0001 C CNN
F 3 "~" H 12250 4150 50  0001 C CNN
	1    12250 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 1100 1650 1100
Wire Wire Line
	950  1400 1650 1400
$Comp
L Device:C C?
U 1 1 5E3F6DDF
P 1650 1250
F 0 "C?" H 1765 1296 50  0000 L CNN
F 1 "100n" H 1765 1205 50  0000 L CNN
F 2 "" H 1688 1100 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
Connection ~ 1650 1100
Wire Wire Line
	1650 1100 2050 1100
Connection ~ 1650 1400
Wire Wire Line
	1650 1400 2050 1400
Text Label 8200 7950 0    50   ~ 0
RXD
Text Label 8200 8050 0    50   ~ 0
TXD
Wire Wire Line
	8200 8050 8050 8050
Wire Wire Line
	8200 7950 8050 7950
$Comp
L Transistor_FET:2N7002 Q?
U 1 1 5E415604
P 8000 3550
F 0 "Q?" H 8206 3596 50  0000 L CNN
F 1 "2N7002" H 8206 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8200 3475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 8000 3550 50  0001 L CNN
	1    8000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3350 8100 3250
Connection ~ 8100 3250
Wire Wire Line
	8100 3850 8100 3800
Wire Wire Line
	7950 3800 8100 3800
Connection ~ 8100 3800
Wire Wire Line
	8100 3800 8100 3750
Wire Wire Line
	7650 3800 7650 3550
Wire Wire Line
	7450 3550 7650 3550
Connection ~ 7650 3550
Wire Wire Line
	7650 3550 7800 3550
$EndSCHEMATC
