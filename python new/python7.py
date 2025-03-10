print("###### enter the string to be reversed#########")
print("for example")
print("hello hi ===>  ih olleh")


class string:
    def __init__(self):
        self.a=input("ENTER THE STRING TO BE REVERSED:") 
    def __del__(self):
        b=self.a[::-1]
        print("THE REVERSE STRING IS------>",b)
S=string()
del S
