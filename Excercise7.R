nerwowi <- c(3, 3, 4, 5, 5)
spokojni <- c(4, 6, 7, 9, 9)

wilcox.test(nerwowi, spokojni, alternative = c("greater"), exact = NULL)