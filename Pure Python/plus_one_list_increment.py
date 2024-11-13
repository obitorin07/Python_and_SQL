
"""
Doing increment in given list
Increment the large integer by one and return the resulting array of digits.
"""

def plusOne(digits: list[int]) -> list[int]:
    str_digit = [str(i) for i in digits]
    int_digit = int(''.join(str_digit)) + 1
    int_to_list = [int(i) for i in str(int_digit)]
    return int_to_list

print(plusOne([1235])) # i want to output 1 2 3 6 in list
print(plusOne([9]))
print(plusOne([12599]))