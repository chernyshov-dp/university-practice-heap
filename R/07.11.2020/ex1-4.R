# Задание 1
par(mfcol = c(1, 2))

# Первый способ
x <- seq(-2*pi,2*pi, length.out = 100)
plot(x, cos(x), 
     type = 'l', 
     col ='black', 
     xlab = 'OX', 
     ylab = 'OY', 
     main = 'y = cos(x)')
abline(v = seq(-2*pi, 2*pi,pi), h = seq(-2, 2, 0.5), col = 'tomato')

# Второй способ
plot(cos, -2*pi, 2*pi, 
     type = 'l', 
     col ='black', 
     xlab = 'OX', 
     ylab = 'OY', 
     main = 'y = cos(x)')
abline(v = seq(-2*pi, 2*pi,pi), h = seq(-2, 2, 0.5), col = 'plum3')

# Задание 2
par(mfcol = c(3,3))
x <- seq(-2*pi,2*pi, length.out = 100)

for (i in c('p', 'l', 'b', 'c', 'o', 's', 'S', 'n', 'h')){
  plot(x, cos(x), 
       type = i, 
       col ='plum3', 
       xlab = 'OX', 
       ylab = 'OY', 
       main = i)
}

# Задание 3
par(mfcol = c(2,3))
x <- seq(-2*pi,2*pi, length.out = 100)

for (i in seq(1:6)){
  plot(x, cos(x), 
       type = 'l', 
       lty = i, 
       lwd = 3, 
       col ='plum3', 
       xlab = 'OX', 
       ylab = 'OY', 
       main = paste('lty =', i))
}

# Задани 4
par(mfcol = c(1,3))
curve(x**2 - 3*x, xlab = 'OX', ylab = 'OY', lwd = 2, col = 'blue', main = 'Рис. 1')
curve(x**2 - 2, lwd = 2, col = 'red', add = TRUE)

curve(cos(x), xlab = 'OX', ylab = 'OY', lwd = 2, col = 'blue', main = 'Рис. 2')
curve(sin(x), lwd = 2, col = 'red', add = TRUE)

curve(sin(cos(x) * exp(-x/2)), xlab = 'OX', ylab = 'OY', lwd = 2, col = 'blue', main = 'Рис. 3')
grid()

