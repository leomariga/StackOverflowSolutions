import os
stuDir = 'StudentDetails'
stuDir_filepath = os.path.join(os.path.dirname(__file__), stuDir)
os.mkdir(stuDir_filepath)

facDir = 'FacultyDetails'
facDir_filepath = os.path.join(os.path.dirname(__file__), facDir)
os.mkdir(facDir_filepath)

name_of_file = "name_file"
file_path= os.path.join(facDir_filepath, name_of_file+".txt")         
file1 = open(file_path, "w")
toFile = "Some Text here"
file1.write(toFile)
file1.close()
