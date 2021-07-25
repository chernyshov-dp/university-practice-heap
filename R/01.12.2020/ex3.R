a<-1:3; a
t<-"Пушкин-наше все!";t
L<-list(Vector=a, Text=t)
saveRDS(file="data.rds",L)
Data<-readRDS("data.rds")
Data
library(dplyr)
glimpse(Data)