S <- function(x){
  if (x < 0){
    x1 <- sin(2*x)
    
  } else if (x >= 0 && x <= 2){
    x2 <- x**2
    
  } else{
    x3 <- 6-x
  }
}

for (i in -10:5){
  plot(S,i)
}