#th central limite

nobs <- 400
n <- 50
Xbr <- data.frame(xb = rep(0,nobs), z = rep(0,nobs),fz = rep(0,nobs))

p = 0.5
Xbr$xb <- rbinom(nobs,n,p)
Xbr$z <- (Xbr$xb - mean(Xbr$xb)) / (sd(Xbr$xb))
Xbr$fz <- dnorm(Xbr$z)

dNormal <- data.frame(x = seq(length = nobs, from = -2, to = 2))
dNormal$F <- dnorm(dNormal$x)

library(ggplot2)
ggplot(Xbr) +
  aes(x = z) +
  geom_histogram(colour = "black", fill = "white", aes(y = ..density..), bins = 15) +
  ggtitle(sprintf("histogram de z, X bernouilli (p = %.2f)",p)) +
  xlab("z")+
  ylab("density")+
  geom_density()+
  geom_line(data = dNormal, aes(x= x, y= F), color = "red", lwd = 1.5)

 