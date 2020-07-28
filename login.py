import tkinter as tk
from tkinter import *
import pymysql
from PIL import ImageTk, Image
import HMS


def validate():
    a2 = str(v2.get())
    a3 = str(v3.get())
    if a2 == '' or a3 == '':
        v4.set("Please fill properly")
    else:
        conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='', db='hotelseaview')
        cur = conn.cursor()
        try:
            cur.execute("select * from admin where username='" + a2 + "' and password='" + a3 + "'")
            for r1 in cur:
                root.destroy()
                HMS.omega(r1[1])
            v4.set("invalid login details")
        except:
            conn.rollback()
            v4.set("something error")
        cur.close()
        conn.close()


root = tk.Tk()
root.title("Hotel Login")
root.minsize(height=700, width=1200)
path = "hotel.jpg"
img = ImageTk.PhotoImage(Image.open(path))
my = Label(root,image=img)
my.image = img
my.place(x=0, y=0)
Frame(root, height=516, width=5, bg='black').place(x=520, y=0)
v2 = tk.StringVar()
v3 = tk.StringVar()
v4 = tk.StringVar()
tk.Label(root, text="HOTEL SEAVIEW \n", fg="dark blue", bg="white", font=("times new roman", 40, "italic", "bold"),justify="center").place(x=535, y=10)
tk.Label(root, text="Enter your login details here \n", fg="black", bg="white", font=("times new roman", 25), justify="center").place(x=535, y=100)
tk.Label(root, text="USERNAME", fg="black", bg="white", font=("arial", 20)).place(x=535, y=180)
tk.Entry(root, text="", font=("arial", 20), textvariable=v2).place(x=720, y=180)
tk.Label(root, text="PASSWORD", fg="black", bg="white", font=("arial", 20)).place(x=535, y=250)
tk.Entry(root, text="", show="*", font=("arial", 20), textvariable=v3).place(x=720, y=250)

tk.Button(root, text="LOGIN", font=("arial", 25, "bold"), command=validate).place(x=620, y=320)
tk.Label(root, text="", fg="red", bg="yellow", textvariable=v4).place(x=620, y=400)
nl = Label(root, text='Made by Ashish Kumar', fg='black', bg='gray91', font='msserif 25')
nl.place(x=850, y=580)
nl.tkraise()
