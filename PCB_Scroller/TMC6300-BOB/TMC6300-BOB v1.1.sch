EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TMC6300-BOB"
Date "2019-07-10"
Rev "1.1"
Comp "Trinamic OÜ"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 500  650  0    79   ~ 0
Release history:
Text Notes 500  750  0    39   ~ 0
• First release v1.0
Wire Notes Line
	500  500  500  1500
Wire Notes Line
	500  1500 2500 1500
Wire Notes Line
	2500 1500 2500 500 
Wire Notes Line
	2500 500  500  500 
$Comp
L markings:fiducial fid?
U 1 1 5CD350D5
P 650 7350
AR Path="/5BA8C4E4/5CD350D5" Ref="fid?"  Part="1" 
AR Path="/5CD350D5" Ref="fid101"  Part="1" 
F 0 "fid101" H 750 7400 39  0000 L CNN
F 1 "fiducial" H 750 7350 39  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Dia_1mm_Outer" H 650 7350 39  0001 C CNN
F 3 "" H 650 7350 39  0001 C CNN
	1    650  7350
	1    0    0    -1  
$EndComp
$Comp
L markings:fiducial fid?
U 1 1 5CD350DB
P 650 7500
AR Path="/5BA8C4E4/5CD350DB" Ref="fid?"  Part="1" 
AR Path="/5CD350DB" Ref="fid102"  Part="1" 
F 0 "fid102" H 750 7550 39  0000 L CNN
F 1 "fiducial" H 750 7500 39  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Dia_1mm_Outer" H 650 7500 39  0001 C CNN
F 3 "" H 650 7500 39  0001 C CNN
	1    650  7500
	1    0    0    -1  
$EndComp
$Comp
L markings:fiducial fid?
U 1 1 5CD350E1
P 650 7650
AR Path="/5BA8C4E4/5CD350E1" Ref="fid?"  Part="1" 
AR Path="/5CD350E1" Ref="fid103"  Part="1" 
F 0 "fid103" H 750 7700 39  0000 L CNN
F 1 "fiducial" H 750 7650 39  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Dia_1mm_Outer" H 650 7650 39  0001 C CNN
F 3 "" H 650 7650 39  0001 C CNN
	1    650  7650
	1    0    0    -1  
$EndComp
Text Notes 550  7200 0    79   ~ 0
Fiducials
Wire Notes Line
	500  7050 500  7750
Wire Notes Line
	500  7750 1150 7750
Wire Notes Line
	1150 7750 1150 7050
Wire Notes Line
	1150 7050 500  7050
$Comp
L Trinamic:TMC6300 IC?
U 1 1 5CD3A307
P 7600 3600
AR Path="/5CD01330/5CD3A307" Ref="IC?"  Part="1" 
AR Path="/5CD3A307" Ref="IC101"  Part="1" 
F 0 "IC101" H 7600 4750 39  0000 C CNN
F 1 "TMC6300" H 7600 4700 39  0000 C CNN
F 2 "Trinamic:QFN20" H 7600 3600 39  0001 C CNN
F 3 "" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2100 6900 2750
Wire Wire Line
	6900 2750 7000 2750
Text HLabel 5550 2100 0    39   Input ~ 0
+Vbat
$Comp
L power:GND #PWR?
U 1 1 5CD3A31D
P 6900 5050
AR Path="/5CD01330/5CD3A31D" Ref="#PWR?"  Part="1" 
AR Path="/5CD3A31D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6900 4800 50  0001 C CNN
F 1 "GND" H 6900 4900 39  0000 C CNN
F 2 "" H 6900 5050 50  0001 C CNN
F 3 "" H 6900 5050 50  0001 C CNN
	1    6900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5050 6900 4450
Wire Wire Line
	6900 4150 7000 4150
Wire Wire Line
	7000 4250 6900 4250
Connection ~ 6900 4250
Wire Wire Line
	6900 4250 6900 4150
Wire Wire Line
	7000 4350 6900 4350
Connection ~ 6900 4350
Wire Wire Line
	6900 4350 6900 4250
Wire Wire Line
	7000 4450 6900 4450
Connection ~ 6900 4450
Wire Wire Line
	6900 4450 6900 4350
$Comp
L Device:C C?
U 1 1 5CD3A32E
P 8400 4800
AR Path="/5CD01330/5CD3A32E" Ref="C?"  Part="1" 
AR Path="/5CD3A32E" Ref="C105"  Part="1" 
F 0 "C105" V 8250 4800 39  0000 C CNN
F 1 "100nF/10V/0603" V 8550 4800 39  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 4650 50  0001 C CNN
F 3 "~" H 8400 4800 50  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4450 8400 4450
Wire Wire Line
	8400 4450 8400 4650
Wire Wire Line
	8400 4950 8400 5050
$Comp
L power:GND #PWR?
U 1 1 5CD3A337
P 8400 5050
AR Path="/5CD01330/5CD3A337" Ref="#PWR?"  Part="1" 
AR Path="/5CD3A337" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 8400 4800 50  0001 C CNN
F 1 "GND" H 8400 4900 39  0000 C CNN
F 2 "" H 8400 5050 50  0001 C CNN
F 3 "" H 8400 5050 50  0001 C CNN
	1    8400 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CD3A33D
P 6100 2450
AR Path="/5CD01330/5CD3A33D" Ref="C?"  Part="1" 
AR Path="/5CD3A33D" Ref="C102"  Part="1" 
F 0 "C102" V 5950 2450 39  0000 C CNN
F 1 "100nF/25V/0603" V 6250 2450 39  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6138 2300 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2300 6100 2100
Connection ~ 6100 2100
Wire Wire Line
	6100 2100 5650 2100
Wire Wire Line
	5650 2300 5650 2100
Connection ~ 5650 2100
Wire Wire Line
	5650 2100 5550 2100
Wire Wire Line
	6100 2600 6100 2750
Wire Wire Line
	6100 2750 5650 2750
Wire Wire Line
	5650 2750 5650 2600
Wire Wire Line
	5650 2750 5650 2850
Connection ~ 5650 2750
$Comp
L power:GND #PWR?
U 1 1 5CD3A354
P 5650 2850
AR Path="/5CD01330/5CD3A354" Ref="#PWR?"  Part="1" 
AR Path="/5CD3A354" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5650 2600 50  0001 C CNN
F 1 "GND" H 5650 2700 39  0000 C CNN
F 2 "" H 5650 2850 50  0001 C CNN
F 3 "" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD3A360
P 8800 4800
AR Path="/5CD01330/5CD3A360" Ref="R?"  Part="1" 
AR Path="/5CD3A360" Ref="R109"  Part="1" 
F 0 "R109" V 8700 4800 39  0000 C CNN
F 1 "150mΩ/0,5W" V 8900 4800 39  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8730 4800 50  0001 C CNN
F 3 "~" H 8800 4800 50  0001 C CNN
	1    8800 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD3A366
P 8800 5050
AR Path="/5CD01330/5CD3A366" Ref="#PWR?"  Part="1" 
AR Path="/5CD3A366" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 8800 4800 50  0001 C CNN
F 1 "GND" H 8800 4900 39  0000 C CNN
F 2 "" H 8800 5050 50  0001 C CNN
F 3 "" H 8800 5050 50  0001 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CD3A36E
P 6600 4300
AR Path="/5CD01330/5CD3A36E" Ref="C?"  Part="1" 
AR Path="/5CD3A36E" Ref="C104"  Part="1" 
F 0 "C104" V 6450 4300 39  0000 C CNN
F 1 "100nF/25V/0603" V 6750 4300 39  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6638 4150 50  0001 C CNN
F 3 "~" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4150 6600 3950
Wire Wire Line
	6600 3950 7000 3950
Wire Wire Line
	6600 4450 6600 5050
$Comp
L power:GND #PWR?
U 1 1 5CD3A377
P 6600 5050
AR Path="/5CD01330/5CD3A377" Ref="#PWR?"  Part="1" 
AR Path="/5CD3A377" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 6600 4800 50  0001 C CNN
F 1 "GND" H 6600 4900 39  0000 C CNN
F 2 "" H 6600 5050 50  0001 C CNN
F 3 "" H 6600 5050 50  0001 C CNN
	1    6600 5050
	1    0    0    -1  
$EndComp
Text HLabel 6150 3950 0    39   Input ~ 0
VIO\~STDBY
Text HLabel 5700 3850 0    39   Output ~ 0
DIAG
Text HLabel 3450 3050 0    39   Input ~ 0
UH
Text HLabel 3800 3150 0    39   Input ~ 0
UL
Text HLabel 4150 3250 0    39   Input ~ 0
VH
Text HLabel 4500 3350 0    39   Input ~ 0
VL
Text HLabel 4850 3450 0    39   Input ~ 0
WH
Text HLabel 5200 3550 0    39   Input ~ 0
WL
NoConn ~ 8200 4350
Text HLabel 8200 2950 2    39   Output ~ 0
W
Text HLabel 8200 2850 2    39   Output ~ 0
V
Text HLabel 8200 2750 2    39   Output ~ 0
U
Text HLabel 1850 2300 0    39   Input ~ 0
VIO\~STDBY
Text HLabel 1850 2400 0    39   BiDi ~ 0
GND
Text HLabel 1850 2500 0    39   Input ~ 0
UH
Text HLabel 1850 2600 0    39   Input ~ 0
UL
Text HLabel 1850 2700 0    39   Input ~ 0
VH
Text HLabel 1850 2800 0    39   Input ~ 0
VL
Text HLabel 1850 2900 0    39   Input ~ 0
WH
Text HLabel 1850 3000 0    39   Input ~ 0
WL
Text HLabel 2850 3000 2    39   Output ~ 0
DIAG
Text HLabel 2850 2900 2    39   BiDi ~ 0
GND
Text HLabel 2850 2800 2    39   Output ~ 0
U
Text HLabel 2850 2700 2    39   Output ~ 0
V
Text HLabel 2850 2600 2    39   Output ~ 0
W
Text HLabel 2850 2500 2    39   BiDi ~ 0
GND
Text HLabel 2850 2400 2    39   BiDi ~ 0
GND
Text HLabel 2850 2300 2    39   Input ~ 0
+Vbat
$Comp
L Device:LED D102
U 1 1 5CD18CF1
P 6150 4300
F 0 "D102" H 6150 4400 39  0000 C CNN
F 1 "Blue" H 6150 4150 39  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6150 4300 50  0001 C CNN
F 3 "~" H 6150 4300 50  0001 C CNN
	1    6150 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4450 6150 4650
$Comp
L power:GND #PWR?
U 1 1 5CD1AF25
P 6150 5050
AR Path="/5CD01330/5CD1AF25" Ref="#PWR?"  Part="1" 
AR Path="/5CD1AF25" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 6150 4800 50  0001 C CNN
F 1 "GND" H 6150 4900 39  0000 C CNN
F 2 "" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4150 6150 3950
Wire Wire Line
	6150 3950 6600 3950
Connection ~ 6600 3950
$Comp
L Device:R R?
U 1 1 5CD1C9E4
P 5200 3850
AR Path="/5CD01330/5CD1C9E4" Ref="R?"  Part="1" 
AR Path="/5CD1C9E4" Ref="R106"  Part="1" 
F 0 "R106" V 5100 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 5300 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 3850 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1DAF0
P 4850 3850
AR Path="/5CD01330/5CD1DAF0" Ref="R?"  Part="1" 
AR Path="/5CD1DAF0" Ref="R105"  Part="1" 
F 0 "R105" V 4750 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 4950 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4780 3850 50  0001 C CNN
F 3 "~" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1DECD
P 4500 3850
AR Path="/5CD01330/5CD1DECD" Ref="R?"  Part="1" 
AR Path="/5CD1DECD" Ref="R104"  Part="1" 
F 0 "R104" V 4400 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 4600 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 3850 50  0001 C CNN
F 3 "~" H 4500 3850 50  0001 C CNN
	1    4500 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1E1E1
P 4150 3850
AR Path="/5CD01330/5CD1E1E1" Ref="R?"  Part="1" 
AR Path="/5CD1E1E1" Ref="R103"  Part="1" 
F 0 "R103" V 4050 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 4250 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 3850 50  0001 C CNN
F 3 "~" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1E517
P 3800 3850
AR Path="/5CD01330/5CD1E517" Ref="R?"  Part="1" 
AR Path="/5CD1E517" Ref="R102"  Part="1" 
F 0 "R102" V 3700 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 3900 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 3850 50  0001 C CNN
F 3 "~" H 3800 3850 50  0001 C CNN
	1    3800 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1E90E
P 3450 3850
AR Path="/5CD01330/5CD1E90E" Ref="R?"  Part="1" 
AR Path="/5CD1E90E" Ref="R101"  Part="1" 
F 0 "R101" V 3350 3850 39  0000 C CNN
F 1 "100kΩ/1%/0603" V 3550 3850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 3850 50  0001 C CNN
F 3 "~" H 3450 3850 50  0001 C CNN
	1    3450 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	7000 3550 5200 3550
Wire Wire Line
	7000 3450 4850 3450
Wire Wire Line
	7000 3250 4150 3250
Wire Wire Line
	7000 3050 3450 3050
Wire Wire Line
	5200 3700 5200 3550
Wire Wire Line
	4850 3700 4850 3450
Wire Wire Line
	4500 3700 4500 3350
Wire Wire Line
	4500 3350 7000 3350
Wire Wire Line
	4150 3700 4150 3250
Wire Wire Line
	3800 3700 3800 3150
Wire Wire Line
	3800 3150 7000 3150
Wire Wire Line
	3450 3700 3450 3050
$Comp
L power:GND #PWR?
U 1 1 5CD35675
P 3450 4250
AR Path="/5CD01330/5CD35675" Ref="#PWR?"  Part="1" 
AR Path="/5CD35675" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3450 4000 50  0001 C CNN
F 1 "GND" H 3450 4100 39  0000 C CNN
F 2 "" H 3450 4250 50  0001 C CNN
F 3 "" H 3450 4250 50  0001 C CNN
	1    3450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4000 3450 4150
Wire Wire Line
	3450 4150 3800 4150
Wire Wire Line
	5200 4150 5200 4000
Connection ~ 3450 4150
Wire Wire Line
	3450 4150 3450 4250
Wire Wire Line
	4850 4000 4850 4150
Connection ~ 4850 4150
Wire Wire Line
	4850 4150 5200 4150
Wire Wire Line
	4500 4000 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4500 4150 4850 4150
Wire Wire Line
	4150 4000 4150 4150
Connection ~ 4150 4150
Wire Wire Line
	4150 4150 4500 4150
Wire Wire Line
	3800 4000 3800 4150
Connection ~ 3800 4150
Wire Wire Line
	3800 4150 4150 4150
$Comp
L Device:C C?
U 1 1 5CD4D8CB
P 5650 2450
AR Path="/5CD01330/5CD4D8CB" Ref="C?"  Part="1" 
AR Path="/5CD4D8CB" Ref="C101"  Part="1" 
F 0 "C101" V 5500 2450 39  0000 C CNN
F 1 "10μF/25V/0603" V 5800 2450 39  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 2300 50  0001 C CNN
F 3 "~" H 5650 2450 50  0001 C CNN
	1    5650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD4E181
P 6150 4800
AR Path="/5CD01330/5CD4E181" Ref="R?"  Part="1" 
AR Path="/5CD4E181" Ref="R108"  Part="1" 
F 0 "R108" V 6050 4800 39  0000 C CNN
F 1 "300Ω/1%/0603" V 6250 4800 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 4800 50  0001 C CNN
F 3 "~" H 6150 4800 50  0001 C CNN
	1    6150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4950 6150 5050
$Comp
L Device:R R?
U 1 1 5CD4F37C
P 9150 4800
AR Path="/5CD01330/5CD4F37C" Ref="R?"  Part="1" 
AR Path="/5CD4F37C" Ref="R110"  Part="1" 
F 0 "R110" V 9050 4800 39  0000 C CNN
F 1 "150mΩ/0,5W" V 9250 4800 39  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9080 4800 50  0001 C CNN
F 3 "~" H 9150 4800 50  0001 C CNN
	1    9150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD50403
P 9150 5050
AR Path="/5CD01330/5CD50403" Ref="#PWR?"  Part="1" 
AR Path="/5CD50403" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 9150 4800 50  0001 C CNN
F 1 "GND" H 9150 4900 39  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3350 8800 4650
Wire Wire Line
	8200 3350 8800 3350
Wire Wire Line
	9150 3250 9150 4650
Wire Wire Line
	8200 3250 9150 3250
Wire Wire Line
	9150 4950 9150 5050
Wire Wire Line
	8800 4950 8800 5050
Wire Wire Line
	7000 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4150
$Comp
L Device:LED D101
U 1 1 5CD6C2A1
P 5700 4300
F 0 "D101" H 5700 4400 39  0000 C CNN
F 1 "White" H 5700 4150 39  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5700 4300 50  0001 C CNN
F 3 "~" H 5700 4300 50  0001 C CNN
	1    5700 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 4450 5700 4650
$Comp
L power:GND #PWR?
U 1 1 5CD6C2A8
P 5700 5050
AR Path="/5CD01330/5CD6C2A8" Ref="#PWR?"  Part="1" 
AR Path="/5CD6C2A8" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5700 4800 50  0001 C CNN
F 1 "GND" H 5700 4900 39  0000 C CNN
F 2 "" H 5700 5050 50  0001 C CNN
F 3 "" H 5700 5050 50  0001 C CNN
	1    5700 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD6C2AE
P 5700 4800
AR Path="/5CD01330/5CD6C2AE" Ref="R?"  Part="1" 
AR Path="/5CD6C2AE" Ref="R107"  Part="1" 
F 0 "R107" V 5600 4800 39  0000 C CNN
F 1 "300Ω/1%/0603" V 5800 4800 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5630 4800 50  0001 C CNN
F 3 "~" H 5700 4800 50  0001 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4950 5700 5050
Wire Wire Line
	6100 2100 6900 2100
NoConn ~ 7000 2850
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5CD350F2
P 2650 2600
AR Path="/5BA8C4E4/5CD350F2" Ref="J?"  Part="1" 
AR Path="/5CD350F2" Ref="J102"  Part="1" 
F 0 "J102" H 2650 3100 39  0000 C CNN
F 1 "Conn_01x08_Male" H 2650 3000 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2650 2600 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
	1    2650 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5CD350EC
P 2050 2600
AR Path="/5BA8C4E4/5CD350EC" Ref="J?"  Part="1" 
AR Path="/5CD350EC" Ref="J101"  Part="1" 
F 0 "J101" H 2050 3100 39  0000 C CNN
F 1 "Conn_01x08_Male" H 2050 3000 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2050 2600 50  0001 C CNN
F 3 "~" H 2050 2600 50  0001 C CNN
	1    2050 2600
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
