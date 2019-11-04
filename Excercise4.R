data <- read.csv("absolwenci.csv")

men <- subset(data, GENDER == "Mezczyzna")
women <- subset(data, GENDER == "Kobieta")

pensjaMen <- men[["SALARY"]]
pensjaWomen <-  women[["SALARY"]]

swPensjaMen <- shapiro.test(pensjaMen)
swPensjaMen
qqnorm(pensjaMen)
qqline(pensjaMen)
#not normal distribution

swPensjaWomen <- shapiro.test(pensjaWomen)
swPensjaWomen
qqnorm(pensjaWomen)
qqline(pensjaWomen)
#not normal distribution

varEqual2 <- var.test(pensjaMen, pensjaWomen)
var.test(pensjaMen, pensjaWomen)
#variance equal