Data<-cars
library(dplyr)
glimpse(Data)
write.csv2(Data,'Cars.csv', row.names=F)