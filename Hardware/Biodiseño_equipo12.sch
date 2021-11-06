EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 11811 11811
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
L power:Earth #PWR?
U 1 1 61849A58
P 5350 9000
F 0 "#PWR?" H 5350 8750 50  0001 C CNN
F 1 "Earth" H 5355 8827 50  0000 C CNN
F 2 "" H 5350 9000 50  0001 C CNN
F 3 "~" H 5350 9000 50  0001 C CNN
	1    5350 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1050 6700 1850
Wire Wire Line
	6400 750  6400 900 
Wire Wire Line
	6700 750  6400 750 
$Comp
L Device:R R1
U 1 1 618811CA
P 6700 900
F 0 "R1" H 6770 946 50  0000 L CNN
F 1 "120 " H 6770 855 50  0000 L CNN
F 2 "" V 6630 900 50  0001 C CNN
F 3 "~" H 6700 900 50  0001 C CNN
	1    6700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6200 5450 6300
Connection ~ 5450 6200
Connection ~ 5450 6100
Wire Wire Line
	5450 6100 5450 6200
Wire Wire Line
	7050 6100 5450 6100
Wire Wire Line
	7050 6250 7050 6100
Wire Wire Line
	8550 6250 7050 6250
Connection ~ 8550 6250
Wire Wire Line
	8550 6150 8550 6250
Connection ~ 8550 6150
Wire Wire Line
	8550 6050 8550 6150
Wire Wire Line
	5450 5600 5450 5700
Connection ~ 5450 5600
Wire Wire Line
	5450 5500 5450 5600
Connection ~ 5450 5500
Wire Wire Line
	5450 5400 5450 5500
Connection ~ 5450 5400
Wire Wire Line
	5450 5300 5450 5400
Connection ~ 5450 5300
Wire Wire Line
	5450 5200 5450 5300
Connection ~ 5450 5200
Wire Wire Line
	5450 5100 5450 5200
Connection ~ 5450 5100
Connection ~ 5450 5000
Wire Wire Line
	5550 4800 10550 4800
Wire Wire Line
	5450 5000 5450 5100
Wire Wire Line
	5550 5000 5450 5000
Wire Wire Line
	5550 4800 5550 5000
$Comp
L MCU_Module:RaspberryPi-CM1 U1
U 1 1 6181E98E
P 4450 5400
F 0 "U1" H 4450 2011 50  0000 C CNN
F 1 "RaspberryPi-CM1" H 4450 1920 50  0000 C CNN
F 2 "" H 3850 8800 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/computemodule/datasheets/rpi_DATA_CM_1p0.pdf" H 3850 8800 50  0001 C CNN
	1    4450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2750 9250 2850
Connection ~ 9250 2750
Wire Wire Line
	9250 2650 9250 2750
Connection ~ 9250 2650
Wire Wire Line
	9250 2550 9250 2650
Connection ~ 9250 2550
Wire Wire Line
	9250 2450 9250 2550
Connection ~ 9250 2450
Wire Wire Line
	9250 2350 9250 2450
Connection ~ 9250 2350
Wire Wire Line
	9250 2250 9250 2350
Connection ~ 9250 2250
Connection ~ 9250 2850
Wire Wire Line
	10550 2850 10550 4800
Wire Wire Line
	9250 2850 10550 2850
Wire Wire Line
	9250 2150 9250 2250
$Comp
L Device:LED D1
U 1 1 6185850A
P 6250 900
F 0 "D1" H 6243 1117 50  0000 C CNN
F 1 "LED" H 6243 1026 50  0000 C CNN
F 2 "" H 6250 900 50  0001 C CNN
F 3 "~" H 6250 900 50  0001 C CNN
	1    6250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1850 4250 2100
Wire Wire Line
	3300 1850 4250 1850
Wire Wire Line
	3300 3400 3300 1850
Wire Wire Line
	1550 3400 3300 3400
Wire Wire Line
	2450 1400 2450 3000
Wire Wire Line
	2150 3100 1850 3100
Wire Wire Line
	2150 1700 2150 3100
Wire Wire Line
	1550 1700 2150 1700
Wire Wire Line
	2450 3000 1850 3000
Wire Wire Line
	1550 1400 2450 1400
$Comp
L Connector:USB_B_Micro J1
U 1 1 6184609C
P 1550 3000
F 0 "J1" H 1607 3467 50  0000 C CNN
F 1 "USB_B_Micro" H 1607 3376 50  0000 C CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "~" H 1700 2950 50  0001 C CNN
	1    1550 3000
	1    0    0    -1  
$EndComp
Text HLabel 1450 1700 0    50   Input ~ 0
3.7V
$Comp
L Device:Battery_Cell LIPO
U 1 1 6183CAF2
P 1550 1600
F 0 "LIPO" H 1668 1696 50  0000 L CNN
F 1 "Battery_Cell" H 1668 1605 50  0000 L CNN
F 2 "" V 1550 1660 50  0001 C CNN
F 3 "~" V 1550 1660 50  0001 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
$Comp
L Display_Graphic:EA_eDIPTFT32-A U2
U 1 1 61836BF0
P 8750 3150
F 0 "U2" H 8700 4631 50  0000 C CNN
F 1 "EA_eDIPTFT32-A" H 8700 4540 50  0000 C CNN
F 2 "Display:EA_eDIPTFT32-XXX" H 8750 1650 50  0001 C CNN
F 3 "http://www.lcd-module.com/fileadmin/eng/pdf/grafik/ediptft43-ae.pdf" H 9050 2950 50  0001 C CNN
	1    8750 3150
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:Flir_LEPTON U3
U 1 1 6183106F
P 9250 6450
F 0 "U3" H 9250 7431 50  0000 C CNN
F 1 "Flir_LEPTON" H 9250 7340 50  0000 C CNN
F 2 "" H 8550 7200 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Sensors/Infrared/FLIR_Lepton_Data_Brief.pdf" H 8650 7300 50  0001 C CNN
	1    9250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4700 5450 4800
Connection ~ 5450 4800
Wire Wire Line
	5450 4800 5450 4900
Connection ~ 5450 4900
Wire Wire Line
	5450 4900 5450 5000
Wire Wire Line
	8550 6850 8550 6750
Connection ~ 8550 6350
Wire Wire Line
	8550 6350 8550 6250
Connection ~ 8550 6450
Wire Wire Line
	8550 6450 8550 6350
Connection ~ 8550 6550
Wire Wire Line
	8550 6550 8550 6450
Connection ~ 8550 6650
Wire Wire Line
	8550 6650 8550 6550
Connection ~ 8550 6750
Wire Wire Line
	8550 6750 8550 6650
Wire Wire Line
	4450 8700 5350 8700
Wire Wire Line
	5350 8700 5350 9000
Wire Wire Line
	5450 6600 5450 6500
Connection ~ 5450 6300
Connection ~ 5450 6400
Wire Wire Line
	5450 6400 5450 6300
Connection ~ 5450 6500
Wire Wire Line
	5450 6500 5450 6400
Wire Wire Line
	6700 1850 6500 1850
Wire Wire Line
	6500 1850 6500 2900
Wire Wire Line
	6500 2900 5450 2900
$EndSCHEMATC
