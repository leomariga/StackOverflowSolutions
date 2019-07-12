table_data = [
    ['Filename', 'Line', 'number of numbers', 'string separated by a comma', 'white space found', 'tab found', 'carriage return found'],
    ['filename', '1', '3', '1, 3, 2', 'TRUE', 'FALSE', 'TRUE'], 
    ['filename', '2', '3', '1, 3, 2', 'TRUE', 'FALSE', 'TRUE'],
    ['filename', '3', '1', '1', 'FALSE', 'FALSE', 'TRUE']
]
for row in table_data:
    print("{: ^30} {: ^30} {: ^30} {: ^30} {: ^30} {: ^30} {: ^30}".format(*row))
