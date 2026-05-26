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

# Add Any Iterable
The extend() method does not have to append lists, you can add any iterable object (tuples, sets, dictionaries etc.).

```
thislist = ["apple", "banana", "cherry"]
thistuple = ("kiwi", "orange")
thislist.extend(thistuple)
print(thislist)
```

# The range() Function
To loop through a set of code a specified number of times, we can use the range() function,

The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and ends at a specified number.

```
for x in range(6):
    print(x)
```

Note that range(6) is not the values of 0 to 6, but the values 0 to 5.

The range() function defaults to 0 as a starting value, however it is possible to specify the starting value by adding a parameter: range(2, 6), which means values from 2 to 6 (but not including 6):

```
for x in range(2, 6):
  print(x)
```

The range() function defaults to increment the sequence by 1, however it is possible to specify the increment value by adding a third parameter: range(2, 30, 3):

```
for x in range(2, 30, 3):
  print(x)
```

# Else in For Loop
The else keyword in a for loop specifies a block of code to be executed when the loop is finished:

```
for x in range(6):
  print(x)
else:
  print("Finally finished!")
```

Note: The else block will NOT be executed if the loop is stopped by a break statement.

```
for x in range(x):
    if x == 3: break
    print(x)
else:
    print("Finally finished!")
```

# The pass Statement
for loops cannot be empty, but if you for some reason have a for loop with no content, put in the pass statement to avoid getting an error.

```
for x in [0, 1, 2]:
  pass
```

# Loop Through the Index Numbers
You can also loop through the list items by referring to their index number.

Use the range() and len() functions to create a suitable iterable.

```
thislist = ["apple", "banana", "cherry"]
for i in range(len(thislist)):
  print(thislist[i])
```