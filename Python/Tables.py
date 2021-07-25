class Tables():

	def __init__(self, newLength, newWidth, newHeight):
		self.length = newLength
		self.width = newWidth
		self.height = newHeight

	def getSize(self):
		print(f'Размеры данного стола: \nДлина - {self.length} м \nШирина -  {self.width} м \nВысота - {self.height} м')

class KitchenTables(Tables):

	def getNumberOfSeats(self):
		return int((self.length * self.width) // (0.6 * 0.35))

class Desk(Tables):

	def getWorkingArea(self):
		return self.length * self.width

class ComputerDesk(Desk):

	def __init__(self, newLength, newWidth, newHeight, newDevices):
		self.devices = newDevices
		super().__init__(newLength, newWidth, newHeight)

	def getWorkingArea(self):
		working_area = (self.length * self.width) - self.devices
		return working_area if working_area > 0 else 'Недостаточно рабочего места'


table1 = KitchenTables(2, 1, 0.75)
print('Обеденный стол')
print('**********')
table1.getSize()
print('Количество посадочных мест - ', table1.getNumberOfSeats())
print('**********')

print()

table2 = Desk(1.2, 0.8, 0.75)
print('Письменный стол')
print('**********')
table2.getSize()
print('Площадь рабочей зоны - ', table2.getWorkingArea(), 'м^2')
print('**********')

print()

table3 = ComputerDesk(2, 1, 0.75, 0.45)
print('Компьютерный стол')
print('**********')
table3.getSize()
print('Площадь рабочей зоны - ', table3.getWorkingArea(), ' м^2')
print('**********')