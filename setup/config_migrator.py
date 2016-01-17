from tkinter import *
from tkinter.filedialog import askopenfilename, asksaveasfilename
import re

from config import *

class ConfigMigrator:
    def __init__(self, filename):
        self.lists = []
        with open(filename, mode='r') as f:
            self.numLists = int(f.readline())
            self.conversationIndex = int(f.readline())
            for line in f:
                if line.isspace():
                    continue
                
                c = ConfigList(line)
                o = f.readline().strip()
                try:
                    c.offset = int(o)
                except ValueError:
                    c.offset = o.strip()
                c.fields = f.readline().strip().lower().split(";")
                types = f.readline().strip().split(";")
                for i in range(len(c.fields)):
                    fieldtype = types[i]
                    if fieldtype == "int16":
                        typestring = "short"
                    elif fieldtype == "int32":
                        typestring = "int"
                    elif fieldtype == "int64":
                        typestring = "long"
                    elif fieldtype.startswith("wstring"):
                        a = fieldtype.split(":")
                        typestring = "utf16 " + a[1]
                    elif fieldtype.startswith("string"):
                        a = fieldtype.split(":")
                        typestring = "gbk " + a[1]
                    elif fieldtype.startswith("byte"):
                        a = fieldtype.split(":")
                        typestring = "byte " + a[1]
                    else:
                        typestring = fieldtype
                    c.types.append(typestring)
                self.lists.append(c)
        

class MainWindow(Tk):
    def __init__(self, parent):
        Tk.__init__(self, parent)
        self.parent = parent
        self.initialize()

    def initialize(self):
        self.minsize(600, 60)
        self.grid()

        self.fileLoaded = StringVar()
        Label(self, textvariable=self.fileLoaded, anchor="w").grid(column=0, row=0, sticky="EW")
        Button(self, text="Load Config", command=self.getFile).grid(column=1, row=0)
        self.migrateButton = Button(self, text="Migrate", command=self.migrate, state=DISABLED)
        self.migrateButton.grid(column=2, row=0)

        self.grid_columnconfigure(0, minsize=500)

    def getFile(self):
        filename = askopenfilename()
        self.migrateButton.config(state="disabled")
        if filename is not '':
            try:
                self.migrator = ConfigMigrator(filename)
                self.fileLoaded.set(filename)
                self.migrateButton.config(state="normal")
            except Exception as e:
                print(e)
                self.fileLoaded.set("Error loading file!")

    def migrate(self):
        fsplit = self.fileLoaded.get().split(".")
        dfn = fsplit[0]
        filename = asksaveasfilename(defaultextension=".pwc", initialfile=dfn)
        if filename is not '':
            with open(filename, mode='w') as file:
                file.write(str(self.migrator.conversationIndex) + "\n\n\n")
                for x in range(len(self.migrator.lists)):
                    l = self.migrator.lists[x]
                    file.write("; index "+str(x)+"\n")
                    file.write(l.name + " offset " + str(l.offset) + "\n")
                    for i in range(len(l.fields)):
                        field = l.fields[i]
                        fieldtype = l.types[i]
                        file.write("\t" + field + " " + fieldtype + "\n")
                    file.write("\n")
            self.fileLoaded.set("File successfully migrated!")


if __name__ == "__main__":
    app = MainWindow(None)
    app.title('PWResource Configuration Migrator')
    app.mainloop()

