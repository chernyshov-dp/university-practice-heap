library(ggplot2)
library(dplyr)

attach(diamonds)
glimpse(diamonds)
Data<-as.data.frame(diamonds)
write.csv(Data,'Diamonds.csv', row.names=F)

m<-tapply(price, carat, mean)
mn<-as.numeric(names(m))
plot(mn,m)