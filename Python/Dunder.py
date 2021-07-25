class myClass(object):

	x = 0
	y = 0
	number = 1

	def __init__(self, newX, newY):
		self.x = newX
		self.y = newY
		print(f'x{self.number} = {self.x}, y{self.number} = {self.y}')
		myClass.number += 1

	def __add__(self, other):
		return self.x + other.x, self.y + other.y

	def __sub__(self, other):
		return self.x - other.x, self.y - other.y

	def __mul__(self, other):
		return self.x * other.x, self.y * other.y

	def __truediv__(self, other):
		return self.x / other.x, self.y / other.y

	def __floordiv__(self, other):
		return self.x // other.x, self.y // other.y

	def __pow__(self, other):
		return self.x ** other.x, self.y ** other.y

test = myClass(20, 15)
test1 = myClass(5, 10)
print('\n__add__')
print(test + test1)

print('\n__sub__')
print(test - test1)

print('\n__mul__')
print(test * test1)

print('\n__truediv__')
print(test / test1)

print('\n__floordiv__')
print(test // test1)

print('\n__pow__')
print(test ** test1)