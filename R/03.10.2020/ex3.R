a <- c(1,2,3)
b <- c('green', 'red', 'blue')
c <- c(TRUE,FALSE,TRUE)

ab <- c(1, 'red', 3)
mode(ab)
typeof(ab)

ac <- c(1, FALSE, 3)
mode(ac)
typeof(ac)

bc <- c('green', TRUE, 'blue')
mode(bc)
typeof(bc)

abc <- c(1, 'red', FALSE)
mode(abc)
typeof(abc)

# double + character = character
# double + logical = double
# character + logical = character
# double + character + logical = character