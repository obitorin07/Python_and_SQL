## Question was to find missing characters from given string :)

import string

str_value = string.ascii_lowercase + string.digits
#instead of hardcoding i use string lib to do same things

def missingCharacters(s):
    miss = ''
    for i in str_value:
        if i not in s:
            miss = miss + i
    return miss

a = missingCharacters('012345fdfdfddfdqacxe6789')
print(a)
