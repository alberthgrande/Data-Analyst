# Without list comprehension
fruitlist = ["apple","banana","cherry","kiwi","mango"]
newlist = []
for x in fruitlist:
    if "a" in x:
        newlist.append(x)
print(newlist)

# with list comprehension
print("\n")
newlists = [x for x in fruitlist if "a" in x]
print(newlists)

# Condition
print("\n")
newlists = [x for x in fruitlist if "apple" != x]
print(newlists)

# With no if statement:
print("\n")
newlists = [x for x in fruitlist]
print(newlists)

# Iterable
print("\n")
newlists = [x for x in range(6)]
print(newlists)

# Accept only numbers lower than 5:
print("\n")
newlists = [x for x in range(20) if x < 5]
print(newlists)

# Expression
print("\n")
newlists = [x.upper()for x in fruitlist]
print(newlists)

# Condition List Comprehension
print("\n")
newlist = [x if x != "banana" else "orange" for x in fruitlist]
print(newlist)


