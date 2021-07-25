from functools import reduce


n = int(input('n:'))
a = []

for i in range(n):
    a.append(i+1)
    
answ = reduce(lambda x,y: x + y, a)
print(answ)