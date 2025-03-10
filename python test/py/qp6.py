import sys
def cv(c):
    v=['a','e','i','o','u']
    co=0
    d=b.split()
    print(d)
    for i in d:
        for j in i:
            k=j.lower()
            if k in v:
                co+=1
    print("THE VOWELS IN THE TEXT FILE IS:",co)
a=open("C:\\PY\\sample.txt","r")
b=a.read()
c=str(b)
print(c)
cv(c)
a.close()
