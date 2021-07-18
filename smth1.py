import random

n = int(input("Введите количество чисел: "))
counter_p = 0
counter_n = 0
numbers = []
int_numbers = []

with open("numbers.txt", "w") as f:
	for i in range(n):
   		f.write(str(random.randint(-100, 100)) + ":")
print("Числа успешно записаны в файл numbers.txt")
print()

temp = next(open("numbers.txt"))
numbers = temp.split(":")
numbers.pop(-1)
print(*numbers)

for j in numbers:
	j = int(j)
	int_numbers.append(j)

print(f"Наибольшее число - {max(int_numbers)}")
print(f"Наименьшее число - {min(int_numbers)}")

for negative in numbers:
	if int(negative) < 0:
		counter_n += int(negative)

print((f"Сумма отрицательных чисел - {counter_n}"))

for positive in numbers:
	if int(positive) >= 0:

		counter_p += int(positive)
print(f"Сумма положительных чисел - {counter_p}")

print(f"Среднее арифметическое чисел - {sum(int_numbers)/n}")

squares = [int(av)**2 for av in numbers]
print(f"Среднее арифметическое квадратов чисел - {sum(squares)/n}")



