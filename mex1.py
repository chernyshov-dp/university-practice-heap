import math

def foo(a,b,d):
    if a == 0 or b == 0 or d == 0:
        return 'Заданный треугольник не существует'
                
    s = 1/2 * a * b * math.sin(math.radians(d))

    return round(s,3)

def geron(a, b, c):
    if a == 0 or b == 0 or c == 0:
        return 'Заданный треугольник не существует'
    elif a + b < c or a + c < b or b + c < a:
        return 'Заданный треугольник не существует'
    else:
        p = (a + b + c)/2
        s = math.sqrt(p*(p - a) * (p - b) * (p - c))
        return round(s,3)

    




