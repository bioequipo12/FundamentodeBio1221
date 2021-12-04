import RPi.GPIO as GPIO
import time

GPIO.setwarning(False)

ledPin = 1
GPIO.setmode(GPIO.BOARD)
GPIO.setup(ledPin, GPIO.OUT)
GPIO.output(ledPin, GPIO.HIGH)

while (True):
	GPIO.output(ledPin, GPIO.HIGH)
	time.sleep(1)
	GPIO.output(ledPin, GPIO.LOW)
	time.sleep(1)
GPIO.cleanup();
