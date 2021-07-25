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


myTree1 = Tree("Дуб") # Создание первого дерева
myTree1.grow(19)
myTree1.print_info()

print()

myTree2 = Tree('Сосна') # Создание второго дерева
myTree2.grow(1)
myTree2.print_info()

myTree2.grow(650)
print()
myTree2.print_info()
myTree1.print_info()






