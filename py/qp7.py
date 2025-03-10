class Word:
    def __init__(self):
        print("\t\t\tWELCOME TO THE PROGRAM")
        print("*"*80)
    def rv(self):
        a=input("ENTER THE STRING TO BE REVERSED:")
        b=a[::-1]
        print("THE REVERSE STRING IS------>",b)
    def __del__(self):
        print("*"*80)
        print("THANK YOU")
        print("HAVE A NICE DAY")
        print("*"*80)
S=Word()
S.rv()
del S
        
