import math


class Point():
	'''
	Point(x1, y1, x2, y2)
	'''

	x, y = 0, 0
	x2, y2 = 0, 0


	def __init__(self, newX, newY, newX2, newY2):
		self.x, self.y = newX, newY
		self.x2, self.y2 = newX2, newY2

		print("Координаты установлены")
		print("x1 = ",self.x, " y1 = ", self.y)
		print("x2 = ", self.x2, " y2 = ", self.y2)


	def euclid(self): # Евклидово расстояние
		return math.sqrt((self.x - self.x2)**2 + (self.y - self.y2)**2)


	def euclid_weighted(self): # Взвешенное евклидово расстояние
		return math.sqrt((self.x - self.x2)**2 + (self.y - self.y2)**2)


	def minkowski(self, p): # Расстояние Минковского
		'''
		Point.minkowski(1) - расстояние городского квартала
		Point.minkowski(2) - евклидово расстояние
		'''
		return (math.fabs(self.x - self.x2)**p + math.fabs(self.y - self.y2)**p)**(1/p)


	def chebyshev(self): # Расстояние Чебышева
		return max(math.fabs(self.x - self.x2), math.fabs(self.y - self.y2))


	def difference(self): # Расстояние несогласия
		'''
		Возвращает значение (процент) в зависимости
		от количества элементов пересечения двух множеств,
		состоящих из двух координат (x, y)

		1 - множества уникальны
		0.5 - один элемент множества уникален
		0 - множества равны
		'''
		first = [self.x, self.y] 
		second = [self.x2, self.y2]

		result = list(set(first) & set(second))

		if len(result) == 0:
			return 1

		elif len(result) == 1:
			return 0.5

		else:
			return 0


	def change(self, newX, newY, newX2, newY2): # Изменение координат
		"""
		change(x1, y1, x2, y2)
		"""
		self.x, self.y = newX, newY
		self.x2, self.y2 = newX2, newY2