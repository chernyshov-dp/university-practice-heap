# Задание 1

class Cat():
	name = ""
	age = ""
	weight = ""

	def __init__(self, newName):
		self.name = newName
		self.age = "1"
		self.weight = "2"

	def setName(self, newName):
		self.name = newName

	def getName(self):
		return self.name 



myCat = Cat("Vinyl")
myCat.setName("Кефир")


print("Моего кота зовут " + myCat.name + ", ему " + myCat.age + " год, а весит он " + myCat.weight + " кг")
print()
# Задание 2

class Doll():
	name = ""

	def eat(self):
		print("Ням-ням")

	def makeNoise(self):
		print("A-a-a-a")

	def setName(self, newName):
		self.name = newName

	def getName(self):
		return self.name

	def __init__(self, newName):
		self.name = newName
		print("Появилась кукла её зовут " + newName)

myDoll = Doll("Аня")

print(myDoll.name)

myDoll.setName("Даша")
 
myDoll.eat()
myDoll.makeNoise()

