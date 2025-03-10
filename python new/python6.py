import sys
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
a=open("C:\\PURUSHOTH PYTHON\\sample.txt","r")
b=a.read()
cv(b)
a.close()
