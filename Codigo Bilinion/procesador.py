import cv2
import numpy as np
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils
from detector import a1
from color_detector import r
from color_detector import g
from color_detector import b

#Se termina de usar el dispositivo y se regresa a la pagina inicial
def finalizar():
	root.destroy()
	import main
#Se regresa a la interfaz de captura	
def captura():
	root.destroy()
	import foto
#Se solicita resultado del procesamiento

#Se genera la interaz de salida
root = Tk()
root.geometry("250x320")
root.resizable(width="False",height="False")
root.title ("Bilinion")
root.iconbitmap("bilinion.ico")
root.geometry("250x320")
miFrame = Frame(root, width=250, height=400)
miFrame.pack()
lbl1=Label(miFrame, text="Nivel Aprox. de Bilirrubina", fg="black",font=("Times New Roman",15)).place(x=10, y=20)
if (r<=255 and g<255 and b<255):
	lbl11=Label(miFrame, text="0 - 4 mg/dL", fg="black", font=("Times New Roman",15)).place(x=10, y=65)
if (r<=255 and 200<=g<=255 and 81<=b<=100):
	lbl12=Label(miFrame, text="5 - 14 mg/dL", fg="black", font=("Times New Roman",15)).place(x=10, y=65)
if (r<=255 and 200<=g<=255 and 0<=b<=40):
	lbl13=Label(miFrame, text=">20 mg/dL", fg="black", font=("Times New Roman",15)).place(x=10, y=65)
if (r<=255 and 200<=g<=255 and 41<=b<=80):
	lbl14=Label(miFrame, text="15 - 19 mg/dL", fg="black", font=("Times New Roman",15)).place(x=10, y=65)

lbl2=Label(miFrame, text="Nivel Aprox. de Ictericia", fg="black",font=("Times New Roman",15)).place(x=10, y=100)

if (r<=255 and g<255 and b<255):
	lbl21=Label(miFrame, text="No presenta ictericia", fg="black", font=("Times New Roman",15)).place(x=10, y=145)
if (r<=255 and 200<=g<=255 and 81<=b<=100):
	lbl22=Label(miFrame, text="Ictericia Leve", fg="black", font=("Times New Roman",15)).place(x=10, y=145)
if (r<=255 and 200<=g<=255 and 0<=b<=40):
	lbl23=Label(miFrame, text="Ictericia Grave", fg="black", font=("Times New Roman",15)).place(x=10, y=145)
if (r<=255 and 200<=g<=255 and 41<=b<=80):
	lbl24=Label(miFrame, text="Ictericia Media", fg="black", font=("Times New Roman",15)).place(x=10, y=145)
Button(miFrame, text="Repetir",command=(captura)).place(x=80,y=250)
Button(miFrame, text="Finalizar",command=(finalizar)).place(x=130,y=250)
root.mainloop()
