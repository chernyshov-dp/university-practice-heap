# Диаграмма относительных цен (3.1)
par(mfcol = c(1,1))
plot(mrsk.t$Per, mrsk.t$xt,
     col = 'red',
     type = 'l',
     xlab="Время",
     ylab="Относительная цена",
     main = 'Относительная цена акций')
lines(lenzol.t$Per, lenzol.t$yt,  col = 'blue', type = 'l')
lines(rosbank.t$Per,rosbank.t$zt, col = 'orange', type = 'l')

# Диаграммы рассеяния (3.2)
par(mfcol = c(1, 3))
plot(mrsk.t$log.vol, col = 'red', ylab="log.vol", main = 'МРСК СК')
plot(lenzol.t$log.vol, col = 'blue', ylab="log.vol", main = 'Лензол. ап')
plot(rosbank.t$log.vol, col = 'orange', ylab="log.vol", main = 'Росбанк ао')

# Гистограммы частот цен (3.3)
par(mfcol = c(1, 3))
hist(mrsk.t$Close, col = 'red', xlab ='Цена', main = 'МРСК СК')
hist(lenzol.t$Close, col = 'blue', xlab ='Цена', main = 'Лензол. ап')
hist(rosbank.t$Close, col = 'orange', xlab ='Цена', main = 'Росбанк ао')

# Базовая статистика (4.1)
summary(mrsk.t$log.profit)
summary(lenzol.t$profit)
summary(rosbank.t$profit)

# Диаграммы размахов (4.2)\
par(mfcol = c(1, 1))
log.profit.t <- data.frame(Ticker=c(mrsk.t$Ticker,lenzol.t$Ticker, rosbank.t$Ticker),
                           log.profit=c(mrsk.t$log.profit, lenzol.t$log.profit, rosbank.t$log.profit))

boxplot(log.profit ~ Ticker, data = log.profit.t,
        col = "coral",
        xlab = 'Тикер',
        ylab = "Логдоходность")

# Выбросы (4.3)
result = numeric()
emmissions <-
        function(data){
        up=quantile(data())
        low=quantile(data)
        iqr = up-low
        gr.up=up+(1.5*iqr)
        gr.low=low-(1.5*iqr)
        for(i in 4073){
                if(data>gr.up || data<low.up){
                result[i]=data
                }
        }
}
emmissions(log.profit.t)
result