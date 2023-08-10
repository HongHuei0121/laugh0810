install.packages('relaimpo')
install.packages('randtoolbox')
library(relaimpo)
library(randtoolbox)
help(randtoolbox)


swiss
cor(swiss)
linmod <- lm(Fertility ~ ., data = swiss) 
summary(linmod)

metrics = calc.relimp(linmod, type =c("lmg", "first", "last",  "betasq", "pratt"))
metrics


colnames(swiss)
cor(swiss[, 1], swiss[, 2:6])^2


drop1(linmod)



#LDS抽樣#

x=sobol(1000, dim = 2,seed=29)

plot(x[,1],x[,2])