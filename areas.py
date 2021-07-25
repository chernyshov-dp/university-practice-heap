import math

print('Данная программа вычисляет площадь выбранной вами фигуры')
print('Доступные фигуры: прямоугольник, треугольник, трапеция, круг, эллипс')
f = input('Введите название фигуры -> ')


def rec():
    a = float(input('Введите длину: '))
    b = float(input('Введите ширину: '))
    sr = a * b
    
    return sr


def tri():
    a = float(input('Введите длину основания: '))
    h = float(input('Введите длину высоты: '))
    st = 1/2 * a * h
    
    return st


def tra():
    a = float(input('Введите длину основания: '))
    b = float(input('Введите длину второго основания: '))
    h = float(input('Введите длину высоты: '))
    stra = (1/2 * (a + b)) * h
    
    return stra


def cir():
    r = float(input('Введите радиус круга: '))
    scir = (math.pi * r)**2
    
    return scir
    

def ell():
    a = float(input('Введите первый радиус эллипса: '))
    b = float(input('Введите второй радиус эллипса: '))
    sell = math.pi * a * b    
    
    return sell


if f.lower() == 'прямоугольник':  
    sr = rec()
    print()
    print('Площадь прямоугольника -> ',round(sr,2))

elif f.lower() == 'треугольник':
    st = tri()
    print()
    print('Площадь треуголньика -> ',round(st,2))
    
elif f.lower() == 'трапеция':
    stra  = tra()
    print()
    print('Площадь трапеции -> ',round(stra,2))

elif f.lower() == 'круг':
    scir = cir()
    print()
    print('Площадь круга -> ',round(scir,2))
    
elif f.lower() == 'эллипс':
    sell = ell()
    print()
    print('Площадь эллипса -> ',round(sell,2))
    
else:
    print()
    print('ЗАДАНО НЕВЕРНОЕ ЗНАЧЕНИЕ!')
    
    