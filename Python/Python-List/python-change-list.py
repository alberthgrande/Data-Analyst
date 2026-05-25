# Change Value Item
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "mango"]
thislist[1] = "blackcurant"
print(thislist)

# Change a Range of Item Value
thislist[1:3] = ["banana", "watermelon"]
print(thislist)

fruitlist = ["apple", "banana", "cherry"]
print(f"Before: {len(fruitlist)}")
fruitlist[1:2] = ["balckcurant", "watermelon"]
print(fruitlist)
print(f"After:  {len(fruitlist)}")

# Insert Items
fruitlist.insert(10, "orange")
print(fruitlist)
