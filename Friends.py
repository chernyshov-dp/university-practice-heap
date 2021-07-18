import random


class Friends():

	result = 0 

	def __init__(self, newName, account):
		self.name = newName
		self.level = account


	def message(self, other):
		print(self.name, ' благодарит ', other.name, ' за помощь')


	def setLevel (self, other, num):
		self.level -= num
		other.level += num


	def getLevel(self):
		return self.level


	def deposit(self, num): # Зачисление средств на счёт 
		self.level += num
		print("Транзакция проведена успешно")


	def withdrawal(self, num): # Снятие средств со счёта
		if self.level >= num:
			self.level -= num
			print("Транзакция проведена успешно")

		else:
			print("На Вашем счёте недостаточно средств")

	def getZkh(self): # Узнать сумму к оплате услуг ЖКХ
		if self.result > 0:
			print(self.name," на данный момент Ваша задолженность составляет - ", self.result)

		else:
			self.result = random.randint(5000,10000)
			print(self.name," на данный момент Ваша задолженность составляет - ", self.result)

		return self.result


	def zkh(self, num): # Оплата услуг ЖКХ
		if self.result == 0:
			print("Для того чтобы оплатить услуги ЖКХ нужно узнать Вашу текущую задолженность") 
			print("* Воспользуйтесь методом getZkh")

		elif self.level < num:
			print("На Вашем счёте недостаточно средств")

		elif num > self.result:
			print("К сожалению, невозможно перевести сумму большую Вашей текущей задолженности")

		elif num < self.result:
			print("К сожалению, невозможно перевести сумму меньшую Вашей текущей задолженности")

		else:
			self.level -= num
			print("Транзакция проведена успешно")