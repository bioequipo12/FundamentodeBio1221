import cv2
import numpy as np
import foto
from tkinter import *

raiz = Tk()
raiz.title ("Bilinion")
raiz.resizable (False,False)
raiz.iconbitmap("bilinion.ico")
raiz.geometry("250x320")
raiz.config(bg="gray")

miFrame = Frame(raiz, width=250, height=400)
miFrame.pack()
Label(miFrame, text="Bienvenidos al Bilinion", fg="black",font=("Times New Roman",15)).place(x=30, y=20)
Button(miFrame, text="Tomar Captura",command=foto).place(x=75,y=250)
raiz.mainloop()
