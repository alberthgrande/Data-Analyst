# Negative Indexing
Negative indexing means start from the end

-1 refers to the last item, -2 refers to the second last item etc.

# Check if Item Exists
To determine if a specified item is present in a list use the in keyword:

```
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]

if "apple" in thislist:
    print("Yes apple is in the fruit list")
else:
    print("Fruit not found!")
```

# Change a Range of Item Values
To change the value of items within a specific range, define a list with the new values, and refer to the range of index numbers where you want to insert the new values:

```
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "mango"]
thislist[1] = "blackcurant"
print(thislist)

thislist[1:3] = ["banana", "watermelon"]
print(thislist)
```