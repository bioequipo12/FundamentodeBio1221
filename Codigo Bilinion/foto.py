import cv2
import numpy as np
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils

#Se define la funcion visualizar la que nos permitira ver la pantalla
#de la camara en el programa

def iniciar():
		global cap 
		cap= cv2.VideoCapture(0,cv2.CAP_DSHOW)
		visualizar()
	
def visualizar():
		global cap
		if cap is not None:
			ret, frame = cap.read()
		if ret == True:
			frame = imutils.resize(frame, width=225)
			frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
			im= Image.fromarray(frame)
			img = ImageTk.PhotoImage(image=im)
			lblVideo.configure(image=img)
			lblVideo.image = img
			lblVideo.after(10, visualizar)
		else:
			lblVideo.image = " "
			cap.release()
    
#La funcion fin captura la imagen la guarda si lo desea y luego 
#muestra los resultados obtenidos
def fin():
    global cap
    global img_counter
    img_name = "imagen_{}.png".format(img_counter)
    cv2.imwrite(img_name, frame)
    response = messagebox.askyesno("Bilinion", "Desea tomar otra foto?")
    if response == 1:
        img_counter += 1
    else:
        cv2.imwrite(img_name, frame)
        cap.release()
        root.destroy()
        import procesador   

#En el codigo principal se configura el aspecto del codigo y las 
#variables generales
 
img_counter=0
cap= None
	
root=Tk()
root.geometry("250x320")
root.title ("Bilinion")
root.resizable(width="False",height="False")
root.geometry("250x320")
btnIniciar= Button(root, text="Capturar",width=33, command=fin)
btnIniciar.grid(column=0, row=1, pady=5,padx=5)
lblVideo= Label(root)
lblVideo.grid(column=0, row=0, columnspan=2)
iniciar()
ret,frame = cap.read()
root.mainloop()


	




