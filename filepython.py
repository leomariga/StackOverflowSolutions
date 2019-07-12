import os

stuDir_filepath = 'StudentDetails'
os.mkdir(stuDir_filepath)

facDir_filepath = 'FacultyDetails'
os.mkdir(facDir_filepath)

name_of_file = "name_file"
file_path= os.path.join(facDir_filepath, name_of_file+".txt")         
file1 = open(file_path, "w")
toFile = "Some Text here"
file1.write(toFile)
file1.close()
