# file path - relative
file = open(r'testFolder\testFile.txt','r')
fstring = file.read()
#print(fstring)


# file path - absolute
file = open(r"C:\Users\sneh.lata\Documents\GitHub\krajit.github.io\pythonTraining\fileHandling\testFolder\testFile.txt",'r')
fstring = file.read()
print(fstring)


# file location look different in linux and windows
# a better way
import os
"""
There are commands to
- make folder
- get size of files/folder
- many others
"""

