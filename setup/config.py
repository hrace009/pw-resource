import re

class Config:
    def __init__(self, filename):
        self.lists = []
        with open(filename, mode='r') as f:
            self.conversationIndex = int(f.readline())
            current_list = None
            for line in f:
                if line.isspace():
                    continue
                
                if line.startswith((" ", "\t")):
                    self.parseField(current_list, line.strip())
                elif line.startswith(";"):
                    #comment line, ignore
                    pass
                else:
                    current_list = self.parseList(line.strip())
                    self.lists.append(current_list)

    def parseList(self, listentry):
        l = listentry.split()
        cl = ConfigList(l[0])
        if len(l) > 2:
            cl.offset = l[2]
        cl.ignore = listentry.endswith("@ignore")
        return cl

    def parseField(self, cl, fieldentry):
        f = fieldentry.split(None, 1)
        if f[1].endswith("@ignore"):
            cl.addField(f[0], f[1][:-7].rstrip(), True)
        else:
            cl.addField(f[0], f[1])

class ConfigList:
    def __init__(self, name):
        #Strip characters from name except alpha and underscore
        self.name = re.sub('[^A-Za-z_]+', '', name).lower()
        self.offset = 0
        self.fields = []
        self.types = []
        self.ignores = []
        self.ignore = False

    def addField(self, field, fieldtype, ignore=False):
        self.fields.append(field.lower())
        self.types.append(fieldtype.lower())
        self.ignores.append(ignore)
