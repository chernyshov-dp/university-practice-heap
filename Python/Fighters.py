import random
import time


class Athlete():

	name = ""
	health = 100


	def __init__(self, newName):
		self.name = newName
		print("На ринге появляется новый боец, его имя - ", self.name )
		print()

	
	def punch(self, other):
		time.sleep(1)
		print(self.name, "наносит удар бойцу ", other.name)
		other.health -= 20
		print("Уровень физического состояния бойца ", other.name, " - ", other.health)
		print()


fighter1 = Athlete("Владимир")
fighter2 = Athlete("Николай")

while (fighter1.health != 0) and (fighter2.health != 0):

	fighters = [fighter1, fighter2]

	if fighters[random.randint(0,1)] == fighter1:
		fighter1.punch(fighter2)

	else:
		fighter2.punch(fighter1)


print("Победу в поединке одержал " + (fighter1.name if fighter1.health > 0 else fighter2.name) + "!")


