data13 <- c(175.26,177.8,167.64000000000001,160.02,172.72,177.8,175.26,170.18,157.48,160.02,193.04,149.86,157.48,157.48,190.5,157.48,182.88,160.02)

shapiro.test(data13)
qqnorm(data13)
qqline(data13)
## rozklad zbliżony do normalnego

ttestResult5 <- t.test(data13, mu=169.051)
ttestResult5

