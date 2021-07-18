import random


names = [
		"Даниил", "Всеволод", "Александр", "Владимир", "Евгений", 
		"Екатерина", "Анастасия", "Елизавета", "Кристина", "Мария"
		]

ages = [i for i in range(10, 61)]


class Person:
	"""Main class"""
	name = ""
	age = 0
	mytype = ""

	def __init__(self):
		self.name = names.pop(0)
		self.age = random.choice(ages)

		# Проверка на принадлежность к тому или иному классу
		if isinstance(self, Formal): 
			self.mytype  = "формалист" 

		elif isinstance(self, Informal): 
			self.mytype  = "неформал" 

		else: 
			self.mytype  = "реалист"

	def about(self):
		return f"Меня зовут {self.name}, мой возраст - {self.age} лет/год, я {self.mytype}"


class Formal(Person):
	""" Formal class """

	def hello(self, other):
		if self.name == other.name:
			pass

		else:
			return f"{self.name}: Здравствуй, {other.name}"


class Informal(Person):
	""" Informal class """

	def hello(self, other):
		if self.name == other.name:
			pass

		else:
			return f"{self.name}: Привет, {other.name}!"


class Realist(Person):
	""" Realist class """

	def hello(self, other):
		if self.name == other.name:
			pass

		else:
			if (other.age == self.age) or (other.age < self.age) or (other.age - self.age <= 5):
				return f"{self.name}: Привет, {other.name}!"

			else:
				return f"{self.name}: Здравствуй, {other.name}"


# Создание экземпляров
person1 = Informal()
person2 = Formal()
person3 = Realist()
person4 = Informal()
person5 = Formal()
person6 = Realist()

people = [person1, person2, person3, person4, person5, person6]

for person in people:
	print(person.about())

print()

for greetings in people:
	for person in people:
		if person.hello(greetings) == None:
			pass

		else:
			print(person.hello(greetings))