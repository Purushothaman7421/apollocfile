print("###########enter the details##############")



class ID:
    def setdetail (self,name,std,sec):
        self.name=name
        self.std=std
        self.sec=sec
    def getdetail(self):
        print("NAME OF THE STUDENT IS", self.name)
        print("STANDARD OF THE STUDENT IS",self.std)
        print("SECTION IS",self.sec)
class STUDENT(ID):
    pass
a=STUDENT()
name=input("ENTER THE NAME:")
Std=int(input("ENTER THE STD:"))
sec=input("ENTER THE SECTION:")
a.setdetail(name,Std,sec)
a.getdetail()
