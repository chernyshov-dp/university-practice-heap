W <- function(x){
  if (x >= 0){
    x1 <- x**2
  }
  else{
    x2 <- sin(2*x)
  }
}

for (i in -10:5){
  plot(W,i)
}


