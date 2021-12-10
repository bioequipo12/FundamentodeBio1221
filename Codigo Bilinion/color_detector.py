import numpy as np
import pandas as pd
import cv2
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils

img = cv2.imread("prueba.png")
index= ["color", "color_name" , "hex", "R","G","B"]
csv=pd.read_csv("colors.csv",names=index,header=None)
clicked=False
r=g=b=xpos=ypos=0
def recognize_color(R,G,B):
	minimo=10000
	for i in range (len(csv)):
		d=abs(R -int(csv.loc[i,"R"])) + abs(G -int(csv.loc[i,"G"])) + abs(B -int(csv.loc[i,"B"]))
		if (d<=minimo):
			minimo=d
			cname= csv.loc[i,"color_name"]
	return cname

def mouse_click(event,x,y,flags,param):
	if event == cv2.EVENT_LBUTTONDBLCLK:
		global b,g,r,xpos,ypos, clicked
		clicked=True
		xpos=x
		ypos=y
		b,g,r=img[x,y]
		b=int(b)
		g=int(g)
		r=int(r)


cv2.namedWindow("Color Recognition App")
cv2.setMouseCallback('Color Recognition App', mouse_click)
while(1):
	cv2.imshow("Color Recognition App", img)
	if (clicked):
		#cv2.rectangle(image, startpoint, endpoint, color, thickness)-1 fills entire rectangle
		cv2.rectangle(img,(20,20),(750,60),(b,g,r), -1)
		#Creamos el text string para mostrar los colores y su valor en RGB
		text=recognize_color(r,g,b)+ "R=" + str(r) + "G="+ str(g) + "B=" + str(b)
		#cv2.putText(img,text,start,font(0-7),fontScale,color,thickness,lineType)
		cv2.putText(img,text,(50,50),2,0.8,(255,255,255),2,cv2.LINE_AA)
		#Para colores claros ponemos el color en negro
		if (r+g+b>=600):
			cv2.putText(img,text,(50,50),2,0.8,(0,0,0),2,cv2.LINE_AA)
		clicked=False
	if cv2.waitKey(20) & 0xFF == 27:
		break
cv2.destroyAllWindows()
