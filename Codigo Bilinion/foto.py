import cv2
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
from PIL import Image
from PIL import ImageTk
import imutils
def visualizar ():
    global cap
    if cap is not None:
        ret, frame = cap.read()
        if ret == True:
            frame= imutils.resize(frame, width=225)
            frame=cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

            im= Image.fromarray(frame)
            img = ImageTk.PhotoImage(image=im)
            lblVideo.configure(image=img)
            lblVideo.image = img
            lblVideo.after(10, visualizar)
        else:
            lblVideo.image = " "
            cap.release()

def iniciar():
    global cap
    cap = cv2.VideoCapture(0,cv2.CAP_DSHOW)
    visualizar()

def fin():
    global cap
    img_counter=0
    img_name = "imagen_{}.png".format(img_counter)
    cv2.imwrite(img_name, frame)
    response = messagebox.askyesno("Bilinion", "Desea tomar otra foto?")
    if response == 1:
        img_counter += 1
    else:
        cv2.imwrite(img_name, frame)
        cap.release()


cap= None
root=Tk()
root.geometry("250x320")
root.title ("Bilinion")
root.iconbitmap("bilinion.ico")
root.geometry("250x320")
btnIniciar= Button(root, text="Capturar",width=33, command=fin)
btnIniciar.grid(column=0, row=1, pady=5,padx=5)
lblVideo= Label(root)
lblVideo.grid(column=0, row=0, columnspan=2)
iniciar()
ret,frame= cap.read()
root.mainloop()
