
# read file content and 
f = open("resources/sampleText.txt", "r")           
fileContent = f.read()


# import regex module
import re

# suppose we are searching for all 4 digit numbers
numberRegEx = re.compile(r'\d\d\d\d')

# find first 4 digit number
mo = numberRegEx.search(fileContent)
#print(mo.group())
 
# find all 4 digit number
mo = numberRegEx.findall(fileContent)
#print(mo)
 

# exericse : find all dates dd/mm/yyyy in the sample text
dateRegEx = re.compile(r'\d\d/\d\d/\d\d\d\d')
mo = dateRegEx.findall(fileContent)
#print(mo)


## group within match
dateRegEx = re.compile(r'(\d\d)/(\d\d)/(\d\d\d\d)')
mo = dateRegEx.findall(fileContent)
##print(mo)

## piping
## group within match
dateRegEx = re.compile(r'\d\d/\d\d/(2020|2019)')
mo = dateRegEx.search(fileContent)
#print(mo.group())



# match non-fixed length pattern
#? zero or one appearence
cRegEx = re.compile(r'a?b')
mo = cRegEx.search("bcd")
#print(mo.group())


phoneNumberRegEx = re.compile(r'(\+91|0)?(\d\d\d\d\d\d\d\d\d\d)')
mo = phoneNumberRegEx.findall("blah blah +918285906156 pak pak  08285906157 quaq quad 9068900900")
#print(mo)

#+ 1 more times
wordRegEx = re.compile(r'[a-zA-Z]+')
mo = wordRegEx.findall("156 pak Padak  08285906157 quaq quad 9068900900")
#print(mo)

numRegEx = re.compile(r'\d+')
mo = numRegEx.findall("156 pak Padak  08285906157 quaq quad 9068900900")
#print(mo)

#* zero or more
numRegEx = re.compile(r'Can I call you\?*')
mo = numRegEx.findall("blah blah bla Can I call you???")
#print(mo)

# {n} exact number of match
phoneNumberRegEx = re.compile(r'(\+91|0)?(\d{10})')
mo = phoneNumberRegEx.findall("blah blah +918285906156 pak pak  08285906157 quaq quad 9068900900")
#print(mo)


# {m,n} m to n repeatting
phoneNumberRegEx = re.compile(r'\d{3,6}')
mo = phoneNumberRegEx.findall("blah blah 18 pak pak  0828 quaq quad 906890")
#print(mo)

# {m,n} m to n repeatting - non-greedy match with ?
phoneNumberRegEx = re.compile(r'\d{3,6}?')
mo = phoneNumberRegEx.findall("blah blah 18 pak pak  0828 quaq quad 906890")
#print(mo)


"""
Character class
\d is a shorthand character class that matches digits.
\w matches "word characters" (letters, numbers, and the underscore).
\s matches whitespace characters (space, tab, newline).

The uppercase shorthand character classes
\D, \W, and \S match charaters that are not digits, word characters, and whitespace.

You can make your own character classes with square brackets: [aeiou]

^caret makes it a negative character class, matching anything not in the brackets:
[^aeiou]
"""

#^xyz begins with
# xyz$ ends with xyz

# dot
# . : anything except newline
atRegEx = re.compile(r'.*\.pdf')
mo = atRegEx.findall(fileContent)
#print(mo)




# Exercise:
#Find all email addresses

# Exercise:
#Find all hyperlinks: https://


# multiline search
# re.DOTALL
atRegEx = re.compile(r'.*', re.DOTALL)
mo = atRegEx.search("i hate this\n non sense")
#print(mo.group())


# ignore cases (capital/small)
# re.I
#atRegEx = re.compile(r'.*', re.I)

# Exericse
# Find and replace all numbers with **
phoneNumberRegEx = re.compile(r'(\+91|0)?(\d{10})')
textInput = "blah blah +918285906156 pak pak  08285906157 quaq quad 9068900900"
newText = phoneNumberRegEx.sub('**',textInput)
print(newText)


# Exericse
# Find and replace all emails with **


# exercise
# google re.VERBOSE





