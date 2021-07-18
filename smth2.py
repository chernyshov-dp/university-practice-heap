import datetime


class Car:
	mark = ""
	power = 0
	seats = 0

	def __init__(self, newMark, newPower, newSeats):
		self.mark = newMark
		self.power = newPower
		self.seats = newSeats

	def quality(self):
		return 0.1 * self.power * self.seats

	def info(self):
		return f"Марка автомобиля - {self.mark}\n Мощность - {self.power} кВт\n Количество мест - {self.seats}"


class SecondCar(Car):
	year = 0

	def __init__(self, newMark, newPower, newSeats, newYear):
		Car.__init__(self, newMark, newPower,newSeats)
		self.year = newYear

	def quality(self):
		return Car.quality(self) - (1.5 * (now.year - self.year))

	def info(self):
		return f"Марка автомобиля - {self.mark}\n Мощность - {self.power} кВт\n Количество мест - {self.seats}\n Год выпуска - {self.year}"


now = datetime.datetime.now()

car1 = Car("BMW", 40, 4)
print(car1.info())
print("Качество машины - ", car1.quality())

print()

car2 = SecondCar("Mercedes-Benz", 40, 4, 2000)
print(car2.info())
print("Качество машины - ", car2.quality())