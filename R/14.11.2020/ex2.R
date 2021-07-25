g <- function(x, a=1, b=1){
  f <- (x**2 - a)/(x - b)
  print(f)
}

g(2,1,1)
g(-3,5,1)
g(6,9,3)
g(3,9,3)

par(mfcol = c(1, 4))
c <- list(c(2,1,1),c(-3,5,1),c(6,9,3),c(3,9,3))

for (i in c){
  plot(g, i, from = -40, to = 40, col = 'plum3', lwd = 2, main = i)
}