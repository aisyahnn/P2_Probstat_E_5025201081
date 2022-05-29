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


#2
mu2 <- 20000
sd2 <-3900
xbar2 <-23500
n2 <- 100

z2 <- ((xbar2-mu2) / (sd2/sqrt(n2)))
pvalue2 <- pnorm(-abs(z2))
pvalue2


#3.b
# x : Bandung ; y : Bali
tsum.test(
  mean.x = 3.64, 
  s.x = 1.67, 
  n.x = 19, 
  mean.y = 2.79, 
  s.y = 1.32, 
  n.y = 27, 
  alternative = "two.sided", 
  mu = 0, 
  var.equal = TRUE,
  conf.level = 0.95
)

#3.c
#sp2 <-(((nBali-1)*(SBali)^2)+((nBdg-1)*(SBdg)^2))/((nBali-1)+(nBdg-1))
sp2 <- (((27 - 1)*(1.32)^2) + ((19 - 1)*(1.67)^2))/((27-1) + (19 - 1))
sp <- sqrt(sp2)
x2 <- (1/27) + (1/19)
x <- sqrt(x2)
t <- (2.79 - 3.64)/(sp*x)
t

#3.d
qt(p = 0.05, df = 2, lower.tail = FALSE)




