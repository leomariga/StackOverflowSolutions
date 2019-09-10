# Imagine you have a output layer like this:
a = [
  [4, [22, 16,  11, 33], 24],
  [4, [12, 33,  87, 17], 14],
  [3, [92, 407, 25, 27], 34]
]

# "transpose" the list and get the second element
column1 = list(zip(*a))[1]

# Join all elements with |
newColumn1 = ['|'.join(str(e) for e in row) for row in column1]

# Put back the modified column
b =  list(zip(*a))
b[1] = newColumn1

# "Untranspose" your list
a2 =  list(zip(*b))

