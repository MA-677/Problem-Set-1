library(ggplot2)
set.seed(2002)

A <- 1/2
B <- 1/3
C <- 1/6

spins <- runif(1000)
spinner_arc <- cut(spins, c(0, A, A+B, A+B+C))
tab <- table(spinner_arc) ; 
spin_table <- as.matrix(tab)

prA <- spin_table[1]/1000
prB <- spin_table[2]/1000
prC <- spin_table[3]/1000
sum_pr <- prA + prB + prC 
