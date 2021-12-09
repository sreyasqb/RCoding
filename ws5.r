# Question 1.
x<- rnorm(50)
x
y<- rexp(50)
y
#Question 2.

#Mean of x
mean(x)
#Standard deviation of x
print(sd(x))
#Mean of y
mean(y)
#"Standard deviation of y: "
sd(y)
#"Correlation of x and y: "
cor(x, y)
# Question 3.

boxplot(x, y)

# Question 4.

par(mfrow=c(1,2))
hist(x)
hist(y)
# Question 5.

x<-1-pnorm(1.644) 
y<-qexp(0.75,2)
x
y

# 6.
sample(c("Heads","Tails"), 10, prob=c(0.3,0.7),replace=T)

# 7.
f<-function(x) pnorm(x, mean=100, sd=15)
print(f(115)-f(85))

# 8.
library(distr)
x<-pnorm(0,1)
y<-4-3*x
y
# 9.
# (i)
x<-(1-pnorm(2.64))
print(x)
# (ii)
y<-(pnorm(0.87)-pnorm(0))
y
# (iii)
z<-(pnorm(-1.39)+1-pnorm(1.39))
z
# Question 10.
x<-runif(10, min=0, max=10)
#print(x)
#print("Mean of x: ")
mean(x)
#print("Variance of x: ")
var(x)
# 11.
S <- rolldie(2, makespace = TRUE)
S
S <- addrv(S, FUN = max, invars = c("X1", "X2"), name = "U")
S
S <- addrv(S, FUN = sum, invars = c("X1", "X2"), name = "V")
head(S)
UV <- marginal(S, vars = c("U", "V"))
head(UV)