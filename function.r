#Function that plots a histogram with some standardized outputs
printhist = function(data){
  hist(data,probability = T)
  abline(v = mean(data), lwd = 2, lty = 2)
  abline(v = c(-1,1)*sd(data), lwd = 1, col = "red")
}

