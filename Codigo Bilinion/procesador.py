import cv2
import numpy as np
from tkinter import *
import tkinter as tk
from tkinter import filedialog
import tkinter.filedialog as fd
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils
from detector import a1
from color_detector import r
from color_detector import g
from color_detector import b
import RPi.GPIO as GPIO
import time
#Se termina de usar el dispositivo y se regresa a la pagina inicial
def finalizar():
	root.destroy()
	import main
#Se regresa a la interfaz de captura	
def captura():
	root.destroy()
	import foto
#Se solicita resultado del procesamiento
#Se guarda el contenido 
def guardar():
	nuevo_archivo = fd.asksaveasfile(title='Guardar archivo...',defaultextension='.txt',filetypes=(('Text files', '*.txt'),))
	if nuevo_archivo:
		contenido = self.txt_contenigo.get(1.0,tk.END)
		nuevo_archivo.write(contenido)
		nuevo_archivo.close()
		
#Se genera la interaz de salida
pin = 4
root = Tk()
root.geometry("250x320")
root.resizable(width="False",height="False")
root.title ("Bilinion")
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
	GPIO.setmode(GPIO.BOARD)
	GPIO.setup(pin, GPIO.OUT)
	GPIO.output(pin, GPIO.HIGH)
	time.sleep(2)
	GPIO.cleanup()
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
Button(miFrame, text="Guardar",command=(guardar)).place(x=100, y=200)
root.mainloop()
