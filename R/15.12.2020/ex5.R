urn <- c(rep('w',w), rep('b',b))

#pt - Классическая вероятность
pt <- 2*w/(w+b)*b/(w+b-1)

count <- 0
N <- 10^4 +1
for (i in 1:N){
  x <- sample(urn, size = 2, replace = F)
  if (x[1]=='w' & x[2]=='b' | x[1]=='b' & x[2]=='w'){count <- count + 1}
}
pp <- count/N
pt
pp