print("###########check odd or even numbers##########")
print("#####we get odd and even numbers separately#######")
print("for example")
print("[2,3,4,5,6] ==> odd=>[3,5] & even=>[2,4,6]")

def check_odd_even(odd,even,num):
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
print("the odd num list:",odd)
