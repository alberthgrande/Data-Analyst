# Access Item
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist)
print(thislist[1])

# Negative Indexing
print(thislist[-1])

# Range of Indexes
print(thislist[2:5])
print(thislist[:4])
print(thislist[2:])

# Range of Negative Indexes
print(thislist[-4:-1])

# Check if Item Exists
if "apple" in thislist:
    print("Yes apple is in the fruit list.")
else:
    print("Fruit not found!")
