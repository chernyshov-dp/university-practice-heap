eyes <- c('green','brown','blue','green','green','green','brown','brown','brown',
          'brown','brown','blue','brown','brown','green','green','green','green',
          'brown','blue')
table(eyes)
eyes.f <- factor(eyes)
plot(eyes.f)

eyes.f_order <- ordered(eyes.f, levels=c('brown','green','blue'))
plot(eyes.f_order)