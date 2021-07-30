library(xlsx)
library(dplyr)

path <- 'C:\\Users\\Даниил\\Desktop\\tickers.xlsx'
table <- read.xlsx(path, 1, encoding='UTF-8', header = TRUE)

lenzol = 1
rosbank = 1

x1 <- character()
x2 <- numeric()
x3 <- character()
x4 <- numeric()
x5 <- numeric()
x.log <- numeric()
x.profit <- numeric()
x.log.profit <- numeric()
x.log.vol <- numeric()
xt <- numeric()

y1 <- character()
y2 <- numeric()
y3 <- character()
y4 <- numeric()
y5 <- numeric()
y.log <- numeric()
y.profit <- numeric()
y.log.profit <- numeric()
y.log.vol <- numeric()
yt <- numeric()

z1 <- character()
z2 <- numeric()
z3 <- character()
z4 <- numeric()
z5 <- numeric()
z.log <- numeric()
z.profit <- numeric()
z.log.profit <- numeric()
z.log.vol <- numeric()
zt <- numeric()


for (i in 1:4073){
  
  if (table[i,1] == "МРСК СК"){
    x1[i] <- table$X.TICKER.[i]
    x2[i] <- i
    x3[i] <- table$X.DATE.[i]
    x4[i] <- table$X.CLOSE.[i]
    x5[i] <- table$X.VOL.[i]
    x.log[i] <- log(table$X.CLOSE.[i])
    if (i == 1){
      x.profit[i] <- 0
      x.log.profit[i] <- 0
    }else{
    x.profit[i] <- ((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/table$X.CLOSE.[i-1])
    x.log.profit[i] <- log(((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/
                             table$X.CLOSE.[i-1]))
    }
    x.log.vol[i] <- log(table$X.VOL.[i])
    
  }else if (table[i,1] == "Лензол. ап"){
    y1[lenzol] <- table$X.TICKER.[i]
    y2[lenzol] <- lenzol
    y3[lenzol] <- table$X.DATE.[i]
    y4[lenzol] <- table$X.CLOSE.[i]
    y5[lenzol] <- table$X.VOL.[i]
    y.log[lenzol] <- log(table$X.CLOSE.[i])
    if (lenzol == 1){
      y.profit[lenzol] <- 0
      y.log.profit[lenzol] <- 0
    }else{
    y.profit[lenzol] <- ((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/
                           table$X.CLOSE.[i-1])
    y.log.profit[lenzol] <- log(((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/
                              table$X.CLOSE.[i-1]))
    }
    y.log.vol[lenzol] <- log(table$X.VOL.[i])
    lenzol = lenzol + 1
    
  }else{
    z1[rosbank] <- table$X.TICKER.[i]
    z2[rosbank] <- rosbank
    z3[rosbank] <- table$X.DATE.[i]
    z4[rosbank] <- table$X.CLOSE.[i]
    z5[rosbank] <- table$X.VOL.[i]
    z.log[rosbank] <- log(table$X.CLOSE.[i])
    if (rosbank == 1){
      z.profit[rosbank] <- 0
      z.log.profit[rosbank] <- 0
    }else{
    z.profit[rosbank] <- ((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/
                            table$X.CLOSE.[i-1])
    z.log.profit[rosbank] <- log(((table$X.CLOSE.[i]-table$X.CLOSE.[i-1])/
                              table$X.CLOSE.[i-1]))
    }
    z.log.vol[rosbank] <- log(table$X.VOL.[i])
    rosbank = rosbank + 1
  }
}

# Относительные цены
xt <- (x4-min(x4))/(max(x4)-min(x4))
yt <- (y4-min(y4))/(max(y4)-min(y4))
zt <- (z4-min(z4))/(max(z4)-min(z4))

mrsk.t <- data.frame(Ticker=x1, Per=x2, Date=x3, Close=x4, VOL=x5, Log=x.log,
                     profit=x.profit, log.profit=x.log.profit,
                     log.vol=x.log.vol, xt=xt)

lenzol.t <- data.frame(Ticker=y1, Per=y2, Date=y3, Close=y4, VOL=y5, Log=y.log,
                       profit=y.profit, log.profit=y.log.profit,
                       log.vol=y.log.vol, yt=yt)

rosbank.t <- data.frame(Ticker=z1, Per=z2, Date=z3, Close=z4, VOL=z5, Log=z.log
                        , profit=z.profit, log.profit=z.log.profit,
                        log.vol=z.log.vol, zt=zt)