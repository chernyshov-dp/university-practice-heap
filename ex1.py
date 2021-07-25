import math
import mex1

answ = input('Какую формулу использовать для вычисления площади (1 - Формула Герона, 2 - Формула 2-х сторон): ')
if answ == '1':
    a = int(input('a: '))
    b = int(input('b: '))
    c = int(input('c: '))
    print('Площадь = ' + str(mex1.geron(a,b,c)))
    
    
elif answ == '2':
    a = int(input('a: '))
    b = int(input('b: '))
    d = math.degrees(int(input('Угол между a и b: ')))
    print('Площадь = ' + str(mex1.foo(a,b,d)))

else:
    print('Задано неверное значение')
                     
    
             
