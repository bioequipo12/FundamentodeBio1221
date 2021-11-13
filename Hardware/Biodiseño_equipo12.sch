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
L Sensor_Optical:Flir_LEPTON U3
U 1 1 6183106F
P 9100 7400
F 0 "U3" H 9100 8381 50  0000 C CNN
F 1 "Flir_LEPTON" H 9100 8290 50  0000 C CNN
F 2 "" H 8400 8150 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Sensors/Infrared/FLIR_Lepton_Data_Brief.pdf" H 8500 8250 50  0001 C CNN
	1    9100 7400
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:RaspberryPi-CM1 U1
U 1 1 6181E98E
P 6050 5600
F 0 "U1" H 6050 2211 50  0000 C CNN
F 1 "RaspberryPi-CM1" H 6050 2120 50  0000 C CNN
F 2 "" H 5450 9000 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/computemodule/datasheets/rpi_DATA_CM_1p0.pdf" H 5450 9000 50  0001 C CNN
	1    6050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 7000 8400 7000
Wire Wire Line
	7050 7100 8400 7100
Wire Wire Line
	7050 7200 8400 7200
Wire Wire Line
	7050 7300 8400 7300
Wire Wire Line
	7050 7400 8400 7400
Wire Wire Line
	7050 7500 8400 7500
Wire Wire Line
	7050 7600 8400 7600
Wire Wire Line
	7050 7700 8400 7700
Wire Wire Line
	7050 7800 8400 7800
Wire Wire Line
	7050 7900 8500 7900
Wire Wire Line
	8500 7900 8500 7800
Wire Wire Line
	8500 7800 8400 7800
Connection ~ 8400 7800
$Comp
L power:Earth #PWR?
U 1 1 6191A3E3
P 6100 9250
F 0 "#PWR?" H 6100 9000 50  0001 C CNN
F 1 "Earth" H 6100 9100 50  0001 C CNN
F 2 "" H 6100 9250 50  0001 C CNN
F 3 "~" H 6100 9250 50  0001 C CNN
	1    6100 9250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6191B391
P 9050 8400
F 0 "#PWR?" H 9050 8150 50  0001 C CNN
F 1 "Earth" H 9050 8250 50  0001 C CNN
F 2 "" H 9050 8400 50  0001 C CNN
F 3 "~" H 9050 8400 50  0001 C CNN
	1    9050 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 8900 6050 9250
Wire Wire Line
	6050 9250 6100 9250
Wire Wire Line
	8600 8200 8600 8400
Wire Wire Line
	8600 8400 9050 8400
Wire Wire Line
	3650 8650 3650 8800
$Comp
L Device:LED D1
U 1 1 6185850A
P 3500 8800
F 0 "D1" H 3493 9017 50  0000 C CNN
F 1 "LED" H 3493 8926 50  0000 C CNN
F 2 "" H 3500 8800 50  0001 C CNN
F 3 "~" H 3500 8800 50  0001 C CNN
	1    3500 8800
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 6184609C
P 3050 4100
F 0 "J1" H 3107 4567 50  0000 C CNN
F 1 "USB_B_Micro" H 3107 4476 50  0000 C CNN
F 2 "" H 3200 4050 50  0001 C CNN
F 3 "~" H 3200 4050 50  0001 C CNN
	1    3050 4100
	1    0    0    -1  
$EndComp
Text HLabel 3950 4400 0    50   Input ~ 0
3.7V
$Comp
L Device:Battery_Cell LIPO
U 1 1 6183CAF2
P 4050 4300
F 0 "LIPO" H 4168 4396 50  0000 L CNN
F 1 "Battery_Cell" H 4168 4305 50  0000 L CNN
F 2 "" V 4050 4360 50  0001 C CNN
F 3 "~" V 4050 4360 50  0001 C CNN
	1    4050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4500 3050 4600
Wire Wire Line
	3950 8650 3650 8650
$Comp
L power:Earth #PWR?
U 1 1 61905A6F
P 4050 4650
F 0 "#PWR?" H 4050 4400 50  0001 C CNN
F 1 "Earth" H 4050 4500 50  0001 C CNN
F 2 "" H 4050 4650 50  0001 C CNN
F 3 "~" H 4050 4650 50  0001 C CNN
	1    4050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4400 4050 4650
Wire Wire Line
	4050 4100 3800 4100
Wire Wire Line
	3800 4100 3800 3900
Wire Wire Line
	3800 3900 3350 3900
$Comp
L power:Earth #PWR?
U 1 1 6191BB49
P 3050 4600
F 0 "#PWR?" H 3050 4350 50  0001 C CNN
F 1 "Earth" H 3050 4450 50  0001 C CNN
F 2 "" H 3050 4600 50  0001 C CNN
F 3 "~" H 3050 4600 50  0001 C CNN
	1    3050 4600
	1    0    0    -1  
$EndComp
$Comp
L Display_Graphic:EA_eDIPTFT32-A U2
U 1 1 61836BF0
P 3600 6650
F 0 "U2" H 3550 8131 50  0000 C CNN
F 1 "EA_eDIPTFT32-A" H 3550 8040 50  0000 C CNN
F 2 "Display:EA_eDIPTFT32-XXX" H 3600 5150 50  0001 C CNN
F 3 "http://www.lcd-module.com/fileadmin/eng/pdf/grafik/ediptft43-ae.pdf" H 3900 6450 50  0001 C CNN
	1    3600 6650
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6191A983
P 3750 8150
F 0 "#PWR?" H 3750 7900 50  0001 C CNN
F 1 "Earth" H 3750 8000 50  0001 C CNN
F 2 "" H 3750 8150 50  0001 C CNN
F 3 "~" H 3750 8150 50  0001 C CNN
	1    3750 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7950 3700 8150
Wire Wire Line
	3700 8150 3750 8150
Wire Wire Line
	6350 2000 2500 2000
Wire Wire Line
	2500 2000 2500 5200
Wire Wire Line
	2500 5200 3600 5200
Wire Wire Line
	3600 5200 3600 5350
Wire Wire Line
	5050 4900 4200 4900
Wire Wire Line
	4200 4900 4200 5650
Wire Wire Line
	4300 5750 4300 5000
$Comp
L Device:R R1
U 1 1 618811CA
P 3950 8800
F 0 "R1" H 4020 8846 50  0000 L CNN
F 1 "120Ω" H 4020 8755 50  0000 L CNN
F 2 "" V 3880 8800 50  0001 C CNN
F 3 "~" H 3950 8800 50  0001 C CNN
	1    3950 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 8950 3950 9100
Wire Wire Line
	3950 9100 4800 9100
Wire Wire Line
	4800 9100 4800 8400
Wire Wire Line
	4800 8400 5050 8400
$Comp
L power:Earth #PWR?
U 1 1 61921F35
P 3000 8950
F 0 "#PWR?" H 3000 8700 50  0001 C CNN
F 1 "Earth" H 3000 8800 50  0001 C CNN
F 2 "" H 3000 8950 50  0001 C CNN
F 3 "~" H 3000 8950 50  0001 C CNN
	1    3000 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 8950 3000 8800
Wire Wire Line
	3000 8800 3350 8800
Wire Wire Line
	9200 6600 9200 2000
Wire Wire Line
	9200 2000 6450 2000
Wire Wire Line
	6450 2000 6450 2300
Wire Wire Line
	4050 4100 4050 2100
Wire Wire Line
	4050 2100 6350 2100
Wire Wire Line
	6350 2000 6350 2100
Connection ~ 4050 4100
Connection ~ 6350 2100
Wire Wire Line
	6350 2100 6350 2300
Wire Wire Line
	4200 5650 4100 5650
Wire Wire Line
	4100 5750 4200 5750
Wire Wire Line
	4300 5000 5050 5000
Wire Wire Line
	4100 5950 4200 5950
Wire Wire Line
	4100 6050 4200 6050
Wire Wire Line
	4100 6150 4200 6150
Wire Wire Line
	4100 6250 4200 6250
Wire Wire Line
	4100 6350 4200 6350
Connection ~ 4200 5650
Connection ~ 4200 5750
Wire Wire Line
	4200 5750 4300 5750
Wire Wire Line
	4200 5950 4400 5950
Wire Wire Line
	4400 5950 4400 5100
Wire Wire Line
	4400 5100 5050 5100
Connection ~ 4200 5950
Wire Wire Line
	4200 6050 4500 6050
Wire Wire Line
	4500 6050 4500 5200
Wire Wire Line
	4500 5200 5050 5200
Connection ~ 4200 6050
Wire Wire Line
	4200 6150 4600 6150
Wire Wire Line
	4600 6150 4600 5300
Wire Wire Line
	4600 5300 5050 5300
Connection ~ 4200 6150
Wire Wire Line
	4200 6250 4700 6250
Wire Wire Line
	4700 6250 4700 5400
Wire Wire Line
	4700 5400 5050 5400
Connection ~ 4200 6250
Wire Wire Line
	4200 6350 4800 6350
Wire Wire Line
	4800 6350 4800 5500
Wire Wire Line
	4800 5500 5050 5500
Connection ~ 4200 6350
$EndSCHEMATC
