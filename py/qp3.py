e=[]
o=[]
def coe(e,o):
    n=int(input("ENTER THE NUMBER TO ADD IN THE LIST:  "))
    if(n%2==0):
        e.append(n)
    else:
        o.append(n)
    print("THE EVEN LIST :",e)
    print("THE ODD LIST:",o)
a=int(input("ENTER THE NO.OF ELEMENTS TO BE ADDED:  "))
for i in range(a):
    coe(e,o)
