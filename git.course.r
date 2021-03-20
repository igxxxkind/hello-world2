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


printhist(colsum)

#Function that plots a histogram with some standardized outputs
printhist = function(data){
  hist(data,probability = T)
  abline(v = mean(data), lwd = 2, lty = 2)
  abline(v = c(-1,1)*sd(data), lwd = 1, col = "red")
}


