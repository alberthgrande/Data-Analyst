# string
fruitlist = ["orange","mango","kiwi","pineapple","banana"]
fruitlist.sort()
print(fruitlist)

# numerical
numlist = [100, 50, 65, 82, 23]
numlist.sort()
print(numlist)

# decending sort ise key argument "reverse = True"
numlist.sort(reverse = True)
print(numlist)

# Customize Sort Function
def myfunc(n):
    return abs(n - 50)

numlist.sort(key = myfunc)
print(numlist)

# Case Insensitive Sort
thislist = ["banana", "Orange", "Kiwi", "cherry"]
thislist.sort()
print(thislist)

# with key = str.lower built-in 
print("\n")
thislist.sort(key=str.lower)
print(thislist)

# Reverse Order
print("\n")
newlist = ["banana", "Orange", "Kiwi", "cherry"]
newlist.reverse()
print(newlist)




