install.packages('gtools')

pn <- factorial(5);pn # Число перестановок
cnm <- choose(5,3);cnm # Число сочетаний
library(combinat)
cnm1 <- combn(1:5,3);cnm1

ch <- c('s', 'p', 'o', 'r', 't')
cnm2 <- comb(ch,3);cnm2
pn1 <- permn(ch);pn1

anm <- choose(5,3) * factorial(3);anm # Чисор размещений

library(gtools)
anm1 <- permutations(length(ch), 3, ch);anm1
anm2 <- permutations(length(1:10), 3, 1, 10);anm2
