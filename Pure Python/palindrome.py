def isPalindrome( x: int) -> bool:
    if str(x) == str(x)[::-1]:
        return True
    else:
        return False

print(isPalindrome(151))
print(isPalindrome(1215))
print(isPalindrome('obito'))
print(isPalindrome('PyP'))