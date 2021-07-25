install.packages("combinat")


# Задача 1
a <-factorial(10);a
b <- choose(40, 20);b
c <- factorial(50)/factorial(50-13);c

# Задача 2
library(combinat)
len <- length(permn(c('Т', 'Т', 'О', 'Р')))
p <- 1/len;p

# Задача 3
ch <- c('Иван', 'Петр', 'Антон', 'Ольга')
anm1 <- permutations(4, 3, ch);anm1
n <- choose(4,3) * factorial(3);n
m <- choose(3,2) * factorial(3);m
p1 <- m/n;p1
