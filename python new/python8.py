print("######please enter the number to check palindrome###########")
print("for example")
print("121===> palindrome")


n=int(input("enter a number:"))
p=str(n)
if p==p[::-1]:
    print("the number is a palindrome.")
else:
    print("the number is not a palindrome.")
