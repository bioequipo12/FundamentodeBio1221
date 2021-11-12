import cv2
import numpy as np
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils
#Se termina de usar el dispositivo y se regresa a la pagina inicial
def finalizar():
	root.destroy()
	import main
#Se regresa a la interfaz de captura	
def captura():
	root.destroy()
	import foto

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
lbl2=Label(miFrame, text="Nivel Aprox. de Ictericia", fg="black",font=("Times New Roman",15)).place(x=10, y=100)
Button(miFrame, text="Repetir",command=(captura)).place(x=80,y=250)
Button(miFrame, text="Finalizar",command=(finalizar)).place(x=130,y=250)
root.mainloop()
