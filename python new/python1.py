print("##############ENTER THE NUMBER TO FIND FACTOIAL VALUE###################")
print("for example,  enter value 5 then we get(5x4x3x2x1) = 120")

no=int(input("enter the number:"))
f=1
while(no>1):
    f=f*no
    no=no-1
print(f)
