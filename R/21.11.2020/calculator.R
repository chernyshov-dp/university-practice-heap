# Функции калькулятора

add <- function(x,y){
  return (x+y)
}
subtract <- function(x,y){
  return(x-y)
}
multiply <- function(x,y){
  return(x*y)
}
divide <- function(x,y){
  return(x/y)
}
elevate <- function(x,y){
  return(x**y)
}
sinus <- function(n1){
  return(sin(n1))
}

# Основная программа

{
while (TRUE){
  operations <- c('1','2','3','4','5','6','x')
  print("Что будем делать?", quote = FALSE)
  print("1. Складывать", quote = FALSE)
  print("2. Вычитать", quote = FALSE)
  print("3. Умножать", quote = FALSE)
  print("4. Делить", quote = FALSE)
  print("5. Возвести в степень", quote = FALSE)
  print("6. Найти синус", quote = FALSE)
  print("x. Завершить работу", quote = FALSE)
      
  choice = readline(prompt="Сделайте Ваш выбор, нажав [1/2/3/4/5/6/x]:")
  
# Проверка ввода диапазона операций
  
  if (!choice %in% operations){
    print("Введено неверное значение", quote = FALSE)
    print('------', quote = FALSE)
    next
  }
  
  if (choice == 'x'){
    print("Работа завершена", quote=FALSE)
    break
  }
  
  choice = as.double(choice)
  if (choice == '6'){
    n1 = as.double(readline(prompt="Введите число: "))
    n2 = 1
  }else{
    n1 = as.double(readline(prompt="Введите первое число: "))
    n2 = as.double(readline(prompt="Введите второе число:"))
  }
  
# Проверка деления на 0
  
  if ((n1 == 0 || n2 == 0) && (choice == '4')){
    print("Недопустимая операция", quote = FALSE)
    print('------', quote = FALSE)
    next
  }
  
# Проверка ввода целых и действительных чисел
  
  if (!((n1 %% 1 == 0) || (n1 %% 1 != 0)) && ((n2 %% 1 == 0) || (n2 %% 1 != 0)))
    {
    print("Недопустимая операция", quote = FALSE)
    print('------', quote = FALSE)
    next
  }
  
  operation <- switch(choice, '+', '-', '*', '/', '^', paste0("sin(",n1,')'))
  result <- switch(choice, add(n1,n2), subtract(n1,n2), multiply(n1,n2),
                   divide(n1,n2), elevate(n1,n2), sinus(n1))
  if (choice == '6'){
    print(paste(operation, "=", result), quote = FALSE)
  }else{
    print(paste(n1, operation, n2, "=", result), quote=FALSE)
  }
  
  answer = readline(prompt = "Сохранить результат в буфер? (y/n): ")
  if (answer == 'y'){
    clipboard <- result
    print("Результат успешно сохранён", quote=FALSE)
  }
  print('------', quote = FALSE)
}
}

