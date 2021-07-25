from scipy.optimize import minimize

def G(X): # функция G(X) для ограничения вида G(X)>=0
	x=X[0]
	y=X[1]

	return -(2*x) - y + 4

def F(X): # Целевая функция F(X)
	x=X[0]
	y=X[1]

	return x**2 + y**2 - 2*x - 2*y + 4

X0=[0.1,3] # Начальные значения переменных

b=(0,10.0) # Границы изменения переменных

bnds=(b,b) # Границы как вектор

con1={'type':'ineq','fun':G}# Тип ограничений

cons=[con1] # Набор ограничений

# Решение задачи поиска наименьшего значения функции в области:

sol=minimize(F,X0,method='SLSQP',\

bounds=bnds,constraints=cons)

print("Наим : %s"%str(round(sol.fun,3))) # Вывод наименьшего значения
print("x: %s"%(round(sol.x[0],3))) # Вывод точки, где достигается наим. зн.
print("y: %s"%(round(sol.x[1],3)))

# Целевая функция для отыскания наибольшего значения

def F1(X):#
	x=X[0]
	y=X[1]

	return -(x**2 + y**2 - 2*x - 2*y + 4)# F1(X)=-F(X)

sol1=minimize(F1,X0,method='SLSQP', bounds=bnds,constraints=cons)

print("Наиб : %s"%str(round(-sol1.fun,3)))
print("x: %s"%(round(sol1.x[0],3)))
print("y: %s"%(round(sol1.x[1],3)))