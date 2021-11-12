import cv2
import numpy as np
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils

#Llamamos a la programacion de la camara 
def call():
	raiz.destroy()
	import foto

#Generamos la interfaz de nuestro dispositivo 	
raiz = Tk()
raiz.title ("Bilinion")
raiz.resizable (False,False)
raiz.iconbitmap("bilinion.ico")
raiz.geometry("250x320")
raiz.config(bg="gray")
miFrame = Frame(raiz, width=250, height=400)
miFrame.pack()
lbl=Label(miFrame, text="Bienvenidos al Bilinion", fg="black",font=("Times New Roman",15)).place(x=30, y=20)
Button(miFrame, text="Tomar Captura",command=call).place(x=75,y=250)
raiz.mainloop()
