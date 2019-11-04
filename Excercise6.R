data17 <- c(172.72,157.48,170.18,172.72,175.26,170.18,154.94,149.86,157.48,154.94,175.26,167.64000000000001,157.48,157.48,154.94,177.8)

shapiro.test(data17)
qqnorm(data17)
qqline(data17)
## rozklad nie zbliżony do normalnego!!

ttestResult6 <- t.test(data17, mu=164.1475)
ttestResult6
