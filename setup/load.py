from tkinter import *
from tkinter.filedialog import askopenfilename
from tkinter.messagebox import askyesno
from struct import *
import mysql.connector, sys, subprocess
    
from config import *


nonbmpmap = dict.fromkeys(range(0x10000, sys.maxunicode+1), 0xfffd)

class MainWindow(Tk):
    def __init__(self, parent):
        Tk.__init__(self, parent)
        self.parent = parent
        self.initialize()

    def initialize(self):
        self.minsize(600, 120)
        self.grid()

        self.configLoaded = StringVar()
        self.elementsLoaded = StringVar()
        Label(self, textvariable=self.configLoaded, anchor="w").grid(columnspan=7, column=0, row=0, sticky="EW")
        Button(self, text="Load Config", command=self.getConfigFile).grid(column=7, row=0)
        Label(self, textvariable=self.elementsLoaded, anchor="w").grid(columnspan=7, column=0, row=1, sticky="EW")
        Button(self, text="Load Elementdata", command=self.getElementFile).grid(column=7, row=1)

        Label(self, text="Database Information:", anchor="w").grid(columnspan=8, column=0, row=3, sticky="EW")
        Label(self, text="Host:", anchor="w").grid(columnspan=2, column=0, row=4)
        self.hostInput = Entry(self)
        self.hostInput.insert(0, "localhost")
        self.hostInput.grid(columnspan=2, column=2, row=4, sticky="EW")
        Label(self, text="Username:", anchor="w").grid(columnspan=2, column=4, row=4)
        self.userInput = Entry(self)
        self.userInput.insert(0, "root")
        self.userInput.grid(columnspan=2, column=6, row=4, sticky="EW")
        Label(self, text="Password:", anchor="w").grid(columnspan=2, column=0, row=5)
        self.passwordInput = Entry(self, show="\u2022")
        self.passwordInput.grid(columnspan=2, column=2, row=5, sticky="EW")
        Label(self, text="Database:", anchor="w").grid(columnspan=2, column=4, row=5)
        self.dbInput = Entry(self)
        self.dbInput.grid(columnspan=2, column=6, row=5, sticky="EW")

        self.loadStatus = StringVar()
        Label(self, textvariable = self.loadStatus, anchor="w").grid(columnspan=7, column=0, row=7, sticky="EW")
        self.loadButton = Button(self, text="Load", command=self.load)
        self.loadButton.grid(column=7, row=7)

    def getElementFile(self):
        filename = askopenfilename(filetypes=(("Data files", "*.data"),
                                              ("All files", "*.*")),
                                   initialdir="C:\\Perfect World Entertainment\\Perfect World International\\element\\data")
        if filename:
            self.elementsLoaded.set(filename)

    def getConfigFile(self):
        filename = askopenfilename(filetypes=(("PWResource configs", "*.pwc"),
                                              ("All files", "*.*")))
        if filename:
            try:
                self.config = Config(filename)
                self.configLoaded.set(filename)
            except:
                self.fileLoaded.set("Error loading file!")

    def element_bytes(self, filename):
        with open(filename, "rb") as file:
            while True:
                chunk = file.read(63356)
                if chunk:
                    for byte in chunk:
                        yield byte
                else:
                    break

    def read_byte(self):
        return self.read_bytes(1)

    def read_bytes(self, numbytes):
        result = bytearray()
        for _ in range(int(numbytes)):
            result.append(next(self.reader))
        return result

    def read_short(self):
        return unpack("h", self.read_bytes(2))[0]

    def read_int(self):
        return unpack("i", self.read_bytes(4))[0]

    def read_long(self):
        return unpack("l", self.read_bytes(8))[0]

    def read_float(self):
        return unpack("f", self.read_bytes(4))[0]

    def read_double(self):
        return unpack("d", self.read_bytes(8))[0]

    def read_string(self, length):
        return unpack(str(length)+"s", self.read_bytes(length))[0]

    def read(self, datatype, conn):
        if datatype == "short":
            return self.read_short()
        elif datatype == "int":
            return self.read_int()
        elif datatype == "long":
            return self.read_long()
        elif datatype == "float":
            return self.read_float()
        elif datatype == "double":
            return self.read_double()
        elif datatype.startswith("utf16"):
            spl = datatype.split(None, 1)
            return "'"+conn.converter.escape(self.read_string(spl[1]).decode('utf16', 'replace').rstrip("\0"))+"'"
        elif datatype.startswith("gbk"):
            spl = datatype.split(None, 1)
            return "'"+conn.converter.escape(self.read_string(spl[1]).decode('gbk', 'replace').rstrip("\0"))+"'"
        else:
            spl = datatype.split(None, 1)
            return "'"+self.read_bytes(spl[1])+"'"

    def sqltype(self, cfgtype):
        if cfgtype == "short":
            return "smallint"
        elif cfgtype == "int":
            return "int"
        elif cfgtype == "long":
            return "bigint"
        elif cfgtype == "float":
            return "float"
        elif cfgtype == "double":
            return "double"
        elif cfgtype.startswith("utf") or cfgtype.startswith("gbk"):
            return "varchar(255)"
        else:
            return "blob"

    def execute(self, db, stmt):
        stmt = stmt.translate(nonbmpmap)
        db.execute(stmt)

    def load(self):
        self.reader = self.element_bytes(self.elementsLoaded.get())
        try:
            conn = mysql.connector.connect(user=self.userInput.get(), password=self.passwordInput.get(),
                                         host=self.hostInput.get())
            if not askyesno("Proceed", "This will drop the selected database if it already exists. Are you sure you wish to proceed?"):
                conn.close()
                return
            db = conn.cursor()

            self.execute(db, 'DROP DATABASE IF EXISTS '+self.dbInput.get())
            self.execute(db, 'CREATE DATABASE '+self.dbInput.get())
            conn.database = self.dbInput.get()

            #Skip the first four bytes
            self.read_bytes(4)

            for i in range(40):#len(self.config.lists)):
                l = self.config.lists[i]
                if l.offset == "AUTO":
                    if i == 20:
                        self.read_bytes(4)
                        count = self.read_int()
                        self.read_bytes(count)
                        self.read_bytes(4)
                    elif i == 100:
                        self.read_bytes(4)
                        count = self.read_int()
                        self.read_bytes(count)
                    else:
                        raise ValueError('Non-supported list index with AUTO offset: '+str(i))
                else:
                    self.read_bytes(l.offset)

                if i == self.config.conversationIndex:
                    #TODO: special cases
                    pass
                else:
                    if l.ignore:
                        print("Skipping table "+l.name+"...")
                        count = self.read_int()
                        if count > 0:
                            print("Skipping "+str(count)+" entries...")
                        self.loadStatus.set("Skipping table "+l.name+" ("+str(count)+" entries)...")
                        self.update()
                        for j in range(count):
                            for f in l.types:
                                self.read(f, conn)
                    else:
                        print("Building table "+l.name+"...")
                        cstmt = "CREATE TABLE `"+l.name+"` ("
                        istmt = "INSERT INTO `"+l.name+"` ("
                        for k in range(len(l.fields)):
                            if not l.ignores[k]:
                                cstmt += '`'+l.fields[k]+"` "+self.sqltype(l.types[k])+", "
                                istmt += '`'+l.fields[k]+"`, "
                        cstmt = cstmt[:-2] + ")"
                        self.execute(db, cstmt)

                        istmt = istmt[:-2] + ") VALUES "
                        base_istmt = istmt
                        len_limit = len(base_istmt)+2048
                        count = self.read_int()
                        if count > 0:
                            print("Populating "+str(count)+" entries...")
                        self.loadStatus.set("Building table "+l.name+" ("+str(count)+" entries)...")
                        self.update()
                        for j in range(count):
                            if len(istmt) > len_limit:
                                istmt = istmt[:-2]
                                self.execute(db, istmt)
                                istmt = base_istmt
                            istmt += "("
                            for k in range(len(l.fields)):
                                n = self.read(l.types[k], conn)
                                if not l.ignores[k]:
                                    istmt += str(n) + ", "
                            istmt = istmt[:-2]+"), "
                        istmt = istmt[:-2]
                        if count > 0:
                            self.execute(db, istmt)
                    print("Done! \n")
        except mysql.connector.Error as err:
            print(err)
            self.loadStatus.set("Database error")
        except ValueError as err:
            print(err)
            self.loadStatus.set("Error loading element data")
        else:
            conn.commit()
            self.loadStatus.set("Finished loading!")
        finally:
            try:
                db.close()
                conn.close()
            except:
                pass


if __name__ == "__main__":
    app = MainWindow(None)
    app.title('PWResource Elementdata Loader')
    app.mainloop()
