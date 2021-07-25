far = int(input('Введите температуру в Фарингейтах -> '))

def foo (far):
    cel = (far - 32) * 5/9
    kel = (far - 32) * 5/9 + 273.15
    
    return cel,kel

cel,kel = foo(far)
print()
print('В Цельсиях ->', round(cel,2))
print('В Кельвинах ->', round(kel,2))