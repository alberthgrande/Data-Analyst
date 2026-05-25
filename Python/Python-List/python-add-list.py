# Append Items at the end list 'append()'
fruitlist = ["apple", "banana", "cherry"]
fruitlist.append("orange")
print(fruitlist)

# Insert Items at specified index 'insert(index,value)'
fruitlist.insert(4, "watermelon")
print(fruitlist)

# Extend List append other list to another 'extends()'
fruitlist2 = ["melon", "lemon", "papaya"]
fruitlist2.extend(fruitlist)
print(fruitlist2)

# Add Any Iterable 'extend()''
thislist = ["apple","banana","cherry"]
thistuple = ("kiwi","orange")
thislist.extend(thistuple)
print(thislist)
