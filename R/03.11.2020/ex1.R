res1 <- sample(x = -20:20, size = 30, replace = TRUE)
plot (x = res1,
      col = sample(c('skyblue','tomato', 'violet')),
      cex = 3,
      pch = 'Р«',
      bg = 'green',
      type = 'l',
      lwd = 2,
      lty = 4,
      main = 'РЎР»СѓС‡Р°Р№РЅС‹Рµ С‡РёСЃР»Р°',
      sub = 'РџСЂРµРґСЃС‚Р°РІР»РµРЅРЅС‹Рµ РІ РіСЂР°С„РёС‡РµСЃРєРѕРј РІРёРґРµ',
      xlab = 'OX',
      ylab = 'OY')

x2 = seq(-25,25)
plot (x = x2^3,
      col = sample(c('springgreen1','sienna3', 'olivedrab')),
      cex = 3,
      pch = 1,
      bg = 'green',
      type = 'p',
      lwd = 3,
      lty = 2,
      main = 'РљСѓР±РёС‡РµСЃРєР°СЏ РїР°СЂР°Р±РѕР»Р°',
      sub = 'РџРѕСЃС‚СЂРѕРµРЅРЅР°СЏ СЃ РїРѕРјРѕС‰СЊСЋ СЃР»СѓС‡Р°Р№РЅС‹С… С‡РёСЃРµР»',
      xlab = 'OX',
      ylab = 'OY')
abline (h = seq(-25,25,1), v = seq(-25,100,1), col = 'black')

x3 = seq(-25,25)
plot (x = 5/x3,
      col = sample(c('midnightblue','mediumorchid2', 'ivory2')),
      cex = 3,
      pch = 2,
      bg = 'green',
      type = 'b',
      lwd = 3,
      lty = 2,
      main = 'Р“РёРїРµСЂР±РѕР»Р°',
      sub = 'РџРѕСЃС‚СЂРѕРµРЅРЅР°СЏ СЃ РїРѕРјРѕС‰СЊСЋ СЃР»СѓС‡Р°Р№РЅС‹С… С‡РёСЃРµР»',
      xlab = 'OX',
      ylab = 'OY')

x4 = seq(-25,25)
plot (x = 2*x4 + x4,
      col = 'red',
      cex = 3,
      pch = 2,
      bg = 'green',
      type = 'p',
      lwd = 3,
      lty = 2,
      main = 'Р›РёРЅРµР№РЅР°СЏ С„СѓРЅРєС†РёСЏ',
      sub = 'РџРѕСЃС‚СЂРѕРµРЅРЅР°СЏ СЃ РїРѕРјРѕС‰СЊСЋ СЃР»СѓС‡Р°Р№РЅС‹С… С‡РёСЃРµР»',
      xlab = 'OX',
      ylab = 'OY')
abline (h = seq(-100,100,1), v = seq(-100,100,1), col = c('skyblue','tomato'))


x5 = seq(-5,5)
plot (x = cos(x5),
      col = 'cyan',
      cex = 3,
      bg = 'green',
      type = 'h',
      lwd = 3,
      main = 'РљРѕСЃРёРЅСѓСЃРѕРёРґР°',
      sub = 'РџРѕСЃС‚СЂРѕРµРЅРЅР°СЏ СЃ РїРѕРјРѕС‰СЊСЋ СЃР»СѓС‡Р°Р№РЅС‹С… С‡РёСЃРµР»',
      xlab = 'OX',
      ylab = 'OY')
