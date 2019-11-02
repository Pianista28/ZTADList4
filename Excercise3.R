mniej30 <- c(6, 7, 10, 9)
po30 <- c(5, 6, 2, 3)

swMniej30 <- shapiro.test(mniej30)
qqnorm(mniej30)
qqline(mniej30)
swPo30 <- shapiro.test(po30)
qqnorm(po30)
qqline(po30)
#both are normal distribution

varEqual2 <- var.test(mniej30, po30)
var.test(mniej30, po30)
#variance equal

#We can perform ttest, one side
# h0 - the same level of amusement
# h1 - "mniej30" have a higher level of amusement

ttestResult2 <- t.test(mniej30, po30, var.equal = TRUE, conf.level = 0.95, alternative = c("greater"))
ttestResult2

#We reject the h0 hypothesis and accept the h1 hypothesis that "mniej30" have a higher level of amusement
