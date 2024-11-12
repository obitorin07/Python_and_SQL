
"""
Note that:
    Kelvin = Celsius + 273.15
    Fahrenheit = Celsius * 1.80 + 32.00
"""

def convertTemperature(celsius: float) -> list[float]:
    result = []
    kelvin = celsius + 273.15
    fahre = celsius * 1.80 + 32.00
    result.append(kelvin)
    result.append(fahre)
    return  result


print(convertTemperature(36.50))