# return the square root of x value from given integer
import math
from math import floor


def find_root_x(x):
    return floor(math.sqrt(x))

print(find_root_x(10))
print(find_root_x(9))
print(find_root_x(49))