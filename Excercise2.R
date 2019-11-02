nerwowi <- c(3, 3, 4, 5, 5)
spokojni <- c(4, 6, 7, 9, 9)

swNerwowi <- shapiro.test(nerwowi)
swSpokojni <- shapiro.test(spokojni)
#both are normal distribution

varEqual <- var.test(nerwowi, spokojni)
var.test(nerwowi, spokojni)
#variance equal

#We can perform ttest, one side
# h0 - the same level of energy
# h1 - "Nerwowi" have the higher level of energy

ttestResult1 <- t.test(nerwowi, spokojni, var.equal = TRUE, conf.level = 0.95, alternative = c("greater"))
ttestResult1

#We don't have grounds to reject the hypothesis that means are equal