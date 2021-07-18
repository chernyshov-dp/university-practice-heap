import random
import numpy as np


class Tree():

	name = ""
	height = 0.5
	age = 0

	def __init__(self, newName):
		self.name = newName
		print("Дерево - ", self.name, ", посажено")


	def grow(self,value):
		self.height += 0.5 * value
		self.age += value


	def print_info(self):
		if self.age < 650:
			if self.age == 1:
				print ("Высота  дерева - ", self.height, 'м, возраст - ', self.age, " год")

			else:
				print ("Высота  дерева - ", self.height, 'м, возраст - ', self.age, " лет/года")
		else:
			print("К сожалению, дерево засохло")

class TreeFruit(Tree):
	status = False # Статус плодоносности
	fruits = 0 # Количество плодов (кг)

	def grow(self, value, b1 = 3, y0 = 0.5, a1 = 0.5):
		'''
		fruit_chance - шанс того, что дерево не даст плодов в данном году
		'''

		if self.age < 50:
			self.age += value


			for i in range(value+1):
				self.height = (b1*y0*np.exp(a1*self.age))/(b1+y0*(np.exp(a1*self.age)-1))

			if 5 <= self.age and self.age <= 20: # Если дереву от 5 до 20 лет, оно плодоносно
				self.status = True

			else:
				self.status = False

			if self.status: # Проверка на плодоносность дерева

				fruits_chance = random.randint(0,1) # 0 - на дереве нет плодов, 1 - на дереве есть плоды

				if fruits_chance == 0:
					self.fruits = 0 

				else:
					self.fruits = random.randint(2,10)
			else:
				pass

		else:
			pass

	def harvest(self):
		if self.fruits == 0:
			print('На дереве нет плодов')

		else:
			print('Было собрано ', self.fruits, ' кг урожая')
			self.fruits = 0

	def print_info(self):
		if self.age >= 50:
			print('Дерево - ', self.name, '\nСтатус: Засохло')

		else:
			print('Дерево: ', self.name, '\nВысота: ', round(self.height, 2),' м', '\nВозраст: ', self.age,' лет/года', '\nСостояние: ', 'Плодоносно' if self.status == True else 'Не плодоносно')


cherry = TreeFruit('Вишня')
apple = TreeFruit('Яблоня')
apricot = TreeFruit('Абрикос')
print()

# Пример с вишней
cherry.print_info()
print()
cherry.grow(3) # Через 3 года дерево всё ещё не плодоносно 
cherry.print_info()
print()
cherry.grow(1) 
cherry.print_info()
print()
cherry.grow(3)
cherry.print_info()
print()
cherry.harvest() # Попытка собрать урожай
print()

# Пример с яблоней
apple.print_info()
print()
apple.grow(3)
apple.print_info()
print()
apple.grow(12)
apple.print_info()
print()
apple.harvest()
print()
apple.grow(50)
apple.print_info()