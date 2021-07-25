library(xlsx)
n<-10
m<-10
a<-matrix(rep(0,m*n), nrow=n, ncol=m)
for (i in 1:m){
  for (j in 1:m){
    a[i,j]<-(2*i-j)/(i+j)
  }
}
ad<-as.data.frame(a)
write.xlsx2(ad,'matrix.xlsx', sheetName='matr1', col.names=F, row.names=F, append=F,showNa=FALSE)