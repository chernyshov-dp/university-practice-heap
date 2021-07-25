# Р—Р°РґР°С‡Р° 1
options(digits = 10)
a <- 13
b <- 5
n <- a/b
m <- choose(13,5) * factorial(5);m
p <- m/n;p

# Р—Р°РґР°С‡Р° 2
# Р’ РїР°СЂС‚РёРё РёР· 13 РґРµС‚Р°Р»Рµ РёРјРµРµС‚СЃСЏ 8 СЃС‚Р°РЅРґР°СЂС‚РЅС‹С…. РќР°СѓРґР°С‡Сѓ РѕС‚РѕР±СЂР°Р»Рё 7
# РґРµС‚Р°Р»РµР№. РќР°Р№РґРёС‚Рµ РІРµСЂРѕСЏС‚РЅРѕСЃС‚СЊ p С‚РѕРіРѕ, С‡С‚Рѕ СЃСЂРµРґРё РѕС‚РѕР±СЂР°РЅРЅС‹С…
# РґРµС‚Р°Р»РµР№ СЂРѕРІРЅРѕ 5 СЃС‚Р°РЅРґР°СЂС‚РЅС‹С….
N <- 13
n <- 8
m <- 7
k <- 5
p2 <- round(choose(n, k) * choose(N-n, m-k)/choose(N,m),4);p2

# Задача 3
N <- 9
n <- 3
m <- 5
k <- 1
p2 <- choose(n, k) * choose(N-n, m-k)/choose(N,m);p2

# Задача 4
nb <- 13
ng <- 9
m <- 3
k <- 0:3
n <- ng + nb
p <- choose(nb, k) * choose(ng, m-k)/choose(nb+ng,m);p

# Задача 5
nb <- 15
ng <- 10
m <- 3
k <- 3
p <- choose(ng, k) * choose(nb, m-k)/choose(nb+ng,m);1-p

# Задача 6
nw <- 10
nb <- 5
N <- nw + nb
k <- 0:3
m <- 3
c <- c('0w','1w', '2w', '3w')
p <- round(choose(nw, k) * choose(nb, m-k)/choose(N,m),4);
print(paste0(c, ' => ', p), quote=FALSE)
m <- max(p);m

# Задача 7
a <- 10
b <- 3
n <- a^b
m <- choose(a,b) * factorial(b)
p <- m/n;1-p

# Задача 8
nw <- 9
nb <- 2
N <- nw + nb
k <- 1
m <- 2
p <- round(choose(nw, k) * choose(nb, m-k)/choose(N,m),4);
m <- max(p);m

# Задача 9
N <- 9
n <- 4
m <- 5
k <- 2:3
p2 <- choose(n, k) * choose(N-n, m-k)/choose(N,m);p2