# Loop Through a List using "for"
fruitlist = ["apple","banana","cherry"]
for fruits in fruitlist:
    print(fruits)

# Looping Through a String
print("\n")
for banana in "banana":
    print(banana)

# The break Statement
print("\n")
for fruits in fruitlist:
    #print(fruits)
    if fruits == "banana":
        #print(fruits)
        break
    print(fruits)

# The continue Statement
print("\n")
for fruits in fruitlist:
    if fruits == "banana":
        continue
    print(fruits)

# The range() Function
print("\n")
for x in range(6):
    print(x)
    
# specify parameters start and end "range(start,end)"
print("\n")
for x in range(2,6):
    print(x)

# increment sequence by adding third parameter "range(start,end,increment)"
print("\n")
for x in range(2,30,3):
    print(x)

# Else in For Loop
print("\n")
for x in range(6):
    print(x)
else:
    print("Finally finished!")

# if use the break the else will not be executed
print("\n")
for x in range(x):
    if x == 3: break
    print(x)
else:
    print("Finally finished!")

# Nested Loops
print("\n")
adj = ["red","big","tasty"]
fruits = ["apple","watermelon","orange"]

for x in adj:
   # print(x)
    for y in fruits:
        print(x , y)

# The pass Statement
print("\n")
for x in [0, 1, 2]:
    # print(x)
    pass

# Loop Through the Index Numbers
print("\n")
for x in range(len(fruitlist)):
    print(fruitlist[x])
    #print(x)
   
# Using a While Loop
print("\n")
i = 0
while i < len(fruitlist):
            print(fruitlist[i])   
            i = i + 1 

# Looping Using List Comprehension
print("\nLooping Using List Comprehension")
[print(x) for x in fruitlist]       
                    
                              
                                        
                                                            
                    
