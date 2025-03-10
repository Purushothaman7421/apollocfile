print("########please enter two number to divide#########")
print("for example")
print("10/3 =>3.3333")

try:
    n1=int(input("enter the first no:"))
    n2=int(input("enter the second number:"))
    ans=n1/n2
    print("the answer is",ans)
    
except ZeroDivisionError:
    print("error:division by zero is not allowed.")
