library(BSDA)
#data
Responden <- c(1,2,3,4,5,6,7,8,9)
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#1.a --> standar deviasi
sd1 = sd(X-Y)
sd1

#1.b --> nilai t (p-value)
mu1 <- 0
xbar1 <- mean(sd1)
n1 <- 9
z1 = ((xbar1-mu1) / (sd1/sqrt(n1)))
pvalue1 <- pnorm(-abs(z1))
pvalue1

#1.c
t.test (Y, X, paired = TRUE)


#2.a
mu2 <- 20000
sd2 <-3900
xbar2 <-23500
n2 <- 100

z2 <- ((xbar2-mu2) / (sd2/sqrt(n2)))
pvalue2 <- pnorm(-abs(z2))
pvalue2