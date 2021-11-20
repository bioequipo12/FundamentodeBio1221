import cv2
import numpy as np
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils

image = cv2.imread("prueba.jpg")
i=0
b=0

def dibujar(mask,color):
  global i	
  contornos,_ = cv2.findContours(mask, cv2.RETR_EXTERNAL,
      cv2.CHAIN_APPROX_SIMPLE)
  for (i,c) in enumerate (contornos):
    area = cv2.contourArea(c)
    if (300 < area):
      M = cv2.moments(c)
      if (M["m00"]==0): M["m00"]=1
      x = int(M["m10"]/M["m00"])
      y = int(M['m01']/M['m00'])
      cv2.drawContours(image,[c],0,color,2)
      cv2.putText(image, str(i+1), (x-10,y+10),1, 2,(0,0,0),2)
      return i




Amarillo1Bajo = np.array([21,100,100],np.uint8)
Amarillo1Alto = np.array([25,255,255],np.uint8)

Amarillo2Bajo = np.array([17,100,100],np.uint8)
Amarillo2Alto = np.array([21,255,255],np.uint8)

Amarillo3Bajo = np.array([25,100,100],np.uint8)
Amarillo3Alto = np.array([26,255,255],np.uint8)

Amarillo4Bajo = np.array([26,100,100],np.uint8)
Amarillo4Alto = np.array([30,255,255],np.uint8)

font = cv2.FONT_HERSHEY_SIMPLEX
while (b <= 20):
	if True:  
		frameHSV = cv2.cvtColor(image,cv2.COLOR_BGR2HSV)
		maskAmarillo1 = cv2.inRange(frameHSV,Amarillo1Bajo,Amarillo1Alto)
		maskAmarillo2 = cv2.inRange(frameHSV,Amarillo2Bajo,Amarillo2Alto)
		maskAmarillo3 = cv2.inRange(frameHSV,Amarillo3Bajo,Amarillo3Alto)
		maskAmarillo4 = cv2.inRange(frameHSV,Amarillo4Bajo,Amarillo4Alto)
		dibujar(maskAmarillo1,(21,255,255))
		a1=i
		dibujar(maskAmarillo2,(17,255,255))
		a2=i
		dibujar(maskAmarillo3,(25,255,255))
		a3=i
		dibujar(maskAmarillo4,(0,255,255))
		a4=i
		cv2.imshow("prueba",image)
		print(i,a1,a2,a3,a4)
		b += 1
		if cv2.waitKey(1) & 0xFF == ord('s'):
			break
print(a1,a2,a3,a4)
valores()
cv2.destroyAllWindows()
