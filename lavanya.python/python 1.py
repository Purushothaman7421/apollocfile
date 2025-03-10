'''1.'''
'''no=int(input("enter the number:"))
f=1
while(no>1):
    f=f*no
    no=no-1
print(f)'''

'''2'''
'''def my_len(a):
    length=len(a)
    print("the length of the string:",length)
a=input("enter the string")
my_len(a)'''
'''3'''
'''def check_odd_even(odd,even,num):
    if num%2==0:
        even.append(num)
        return even
    else:
        odd.append(num)
        return odd
odd=[]
even=[]
for i in range(10):
    num=int(input("enter the number:"))
    check_odd_even(odd,even,num)
print("the even num list :",even)
print("the odd num list:",odd)'''

'''5'''
'''try:
    num1=23
    num2=0
    if(num1%num2==0):
        print("num 1 is divisible by num 2")
    else:
        print("num 1 is not divisible by num2")
except ZeroDivisionError:
    print("error:division by zero is not allowed.")'''
'''4'''    
'''dic={}
dic["c"]="Dennis Ritchie"
dic["c++"]="Bjarne stroestrup"
dic["java"]="James Gosling"
dic["python"]="Guido Van Rossum"
print("The dict:", dic)'''
'''8'''
'''n=int(input("enter a number:"))
s=str(n)
if s==s[::-1]:
    print("the number is a palindrome.")
else:
    print("the number is not a palindrome.")'''
    
'''9'''    
'''class ID:
    def selfdetail (self,name,std,sec):
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
a.getdetail()'''

'''7'''
'''class word:
    def __init__(self):
        self.a=input("ENTER THE STRING TO BE REVERSED:") 
    def __del__(self):
        b=self.a[::-1]
        print("THE REVERSE STRING IS------>",b)
S=word()
del S'''
 
'''6''' 
'''import sys
def cv(c):
    v=['a','e','i','o','u']
    co=0
    d=b.split()
    for i in d:
        for j in i:
            k=j.lower()
            if k in v:
                co+=1
    print("THE VOWELS IN THE TEXT FILE IS:",co)
a=open("C:\\Users\\Admin\\Documents\\React Learning\\sample.txt","r")
b=a.read()
c=cv(b)
a.close()'''
      
'''10'''
'''i=100
a=0
b=1
c=1
print("FIBONACCI SERIES \n")
print(a,b,end=" ")
while c<=i:
    print(c,end="\n")
    a=b
    b=c
    c=a+b
print("PROGRAM HAS BEEN COMPLETED SUCCESSFULLY")'''

        
    


    
    

    

    

    
    
        
        
