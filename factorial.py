import math

a = int(input('Введите число: '))

def fac (a):
    factorial = 1
    if a == 0:
        return 1
    
    for i in range(2,a+1):
        factorial *= i

    return factorial

print('Вычисления с помощью функции ->',fac(a))
print('Вычисление с помощью модуль math ->', math.factorial(a))

