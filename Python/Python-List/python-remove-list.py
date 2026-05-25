# Remove Specified Item
fruitlist = ["apple","banana","cherry"]
fruitlist.remove("banana")
print(fruitlist)

# Remove the occurrence of "banana"
fruitlist2 = ["apple","banana","cherry","banana","kiwi"]
fruitlist2.remove("banana")
print(fruitlist2)

# Remove Specified Index
fruitlist2.pop(1)
print(fruitlist2)

# no specify index remove last item on the list
fruitlist2.pop()
print(fruitlist2)

# del keyword also removes the specified index
fruitlist3 = ["apple","banana","cherry","banana","kiwi"]

del fruitlist3[3]
print(fruitlist3)

# no specified index delete completely
# del fruitlist3
# print(fruitlist3)


# Clear the List
fruitlist3.clear()
print(fruitlist3)
