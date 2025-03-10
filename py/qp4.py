try:
    a=int(input("ENTER THE FIRST NUMBER: "))
    b=int(input("ENTER THE SECOND NUMBER: "))
    if(a%b==0):
        print("IT IS DIVISIBLE")
    else:
        print("NOT DIVISIBLE")
except ZeroDivisionError:
    print("ERROR: IT CAN FORM INFINITY AS ANSWER")
