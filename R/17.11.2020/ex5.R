func <- function(p){
  q <- 1/(1+p**2)
  q1 <- -(2*p/(1+p**2)**2)
  e <- (q1/q)*p
  return (list(p,q,e))

}
e <- func(0.5)[3]

# а)

if (e > 1 || e < -1){
  conc <- 'Спрос эластичен'
} else{
  conc <- 'Спрос не эластичен'
}

print(conc)

# б)
foo <- c(func(0.5), conc)
print(foo)
