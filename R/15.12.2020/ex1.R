cube <- 1:6
x <- sample(cube, size = 10^4, replace = T)

ver <- factor(x)
plot(ver, main = 'Гистограмма абсолютных частот')

inter <- c(0,1,2,3,4,5,6)
hist(x, breaks = inter, freq = T, main = 'Гистограмма абсолютных частот')
hist(x, breaks = inter, freq = F, main = 'Гистограмма относительных частот')
