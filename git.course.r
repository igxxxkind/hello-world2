##
print("Hello Git!")
set.seed(12345)
#check if the LL CLT works

#create a matrix of random variables with Poisson(5) distribution
RNmat = matrix(rpois(10000,lambda = 5),100,100)

#consider columnwise sums
colsum = apply(RNmat,2,sum)

#the vector should be Normally distributed with mean nmu and standard deviation nsigma^2

#check for normality
jarque.bera.test(colsum)

Box.test(x = colsum,lag = 8,type = c("Ljung-Box"))

source("function.r")



printhist(colsum)


