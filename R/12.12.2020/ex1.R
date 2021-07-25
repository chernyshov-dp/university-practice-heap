library(xlsx) 
library(dplyr) 
library(ggplot2) 

Path<-"C:\\Users\\Admin\\Downloads\\Отношение к трейлеру.xlsx" 
f1<-read.xlsx(file=Path, sheetIndex=1, startRow = 1, header = TRUE, encoding = "UTF-8") 
glimpse(f1) 
hist(f1$Возраст, freq = T, breaks = 7, col = "purple", main = "Гистограмма возраста") 

inter<-c(0,15,30,45,60,75,90,105) 
hist(f1$Возраст, breaks=inter, freq=F, col="orange", border="grey60", 
     main="Гистограмма возраста", ylab="Частоты, чел.", xlab="Возраст, лет.") 


x<-hist(f1$Возраст, freq=T, breaks=7, col='blue', main="Гистограмма возраста") 
glimpse(x) 


hist(f1$Возраст, breaks=inter, freq=F, col="orange", border="grey60", 
     main="Гистограмма возраста", ylab="Частоты, чел.", xlab="Возраст, лет.") 
lines(density(f1$Возраст), lwd=3, col="red") 
lines(density(f1$Возраст, bw=15), lwd=3, col="green", lty=2)


Path<-"C:\\Users\\Admin\\Downloads\\Акции банков.xlsx" 
f1<-read.xlsx(file=Path, sheetIndex=1, startRow = 1, header = TRUE, encoding = "UTF-8") 
glimpse(f1) 
str(f1) 
All<- list(ВТБ=f1$ВТБ_цена, Газпром=f1$Газпром_цена, Сбер=f1$Сбербанк_цена) 
S<-stack(All) 
str(S) 
head(S,5) 

boxplot(values~ind, 
        data=S
        xlab="Банк", 
        ylab="Цена акции", 
        main="Диаграмма размаха цены акции", 
        col="plum3", 
        horizontal=F) 
ggplot(data=S, mapping=aes(x=ind, y=values))+stat_boxplot() 
bp<-ggplot(data=S, mapping=aes(x=ind, y=values))+stat_boxplot() 
bp+geom_boxplot()+geom_jitter(width=0.2) 
