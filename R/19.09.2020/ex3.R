# Задача 1
options(digits = 10)
a <- 13
b <- 5
n <- a/b
m <- choose(13,5) * factorial(5);m
p <- m/n;p

# Задача 2
# В партии из 13 детале имеется 8 стандартных. Наудачу отобрали 7
# деталей. Найдите вероятность p того, что среди отобранных
# деталей ровно 5 стандартных.
N <- 13
n <- 8
m <- 7
k <- 5
p2 <- round(choose(n, k) * choose(N-n, m-k)/choose(N,m),4);p2

# ?????? 3
N <- 9
n <- 3
m <- 5
k <- 1
p2 <- choose(n, k) * choose(N-n, m-k)/choose(N,m);p2

# ?????? 4
nb <- 13
ng <- 9
m <- 3
k <- 0:3
n <- ng + nb
p <- choose(nb, k) * choose(ng, m-k)/choose(nb+ng,m);p

# ?????? 5
nb <- 15
ng <- 10
m <- 3
k <- 3
p <- choose(ng, k) * choose(nb, m-k)/choose(nb+ng,m);1-p

# ?????? 6
nw <- 10
nb <- 5
N <- nw + nb
k <- 0:3
m <- 3
c <- c('0w','1w', '2w', '3w')
p <- round(choose(nw, k) * choose(nb, m-k)/choose(N,m),4);
print(paste0(c, ' => ', p), quote=FALSE)
m <- max(p);m

# ?????? 7
a <- 10
b <- 3
n <- a^b
m <- choose(a,b) * factorial(b)
p <- m/n;1-p

# ?????? 8
nw <- 9
nb <- 2
N <- nw + nb
k <- 1
m <- 2
p <- round(choose(nw, k) * choose(nb, m-k)/choose(N,m),4);
m <- max(p);m

# ?????? 9
N <- 9
n <- 4
m <- 5
k <- 2:3
p2 <- choose(n, k) * choose(N-n, m-k)/choose(N,m);p2