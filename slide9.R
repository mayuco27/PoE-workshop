## Standard Deviation
# Calculate sd for data'critters' using variable calculated from slide8
sqrt(var_worms)
sqrt(var_spiders)

# Or simply calculate sd from the data set
sd(critters$worms)
sd(critters$spiders)

## Standard Errors
#Firstly, refer to the data to analyse
hist(barnacles$number, main=NULL, xlab = "Number of barnacles per" ~m^2)
abline(v=mean(barnacles$number), col="red", lty=2, lwd = 3)

#try to find se with smaller sample size
sample(barnacles$number, 5, replace = F)
mean(sample(barnacles$number, 5, replace = F))
estimated_mean5<- c()
for (i in 1:50) {estimated_mean5[i] <- mean(sample(barnacles$number, 5, replace = F)) }
#↑This is saying: 
#Run through the sequence 1 to 50. During each cycle, the number is temporarily called ‘i’.  
#At each number, draw 5 numbers from the ‘number’ column, and calculate the mean of those.
#Then add that mean to the ith row of ‘estimated_mean5’ - each time the loop cycles, it adds one more row to ‘estimated_mean5’, until it reaches 50.
#At the end, ‘estimated_mean5’ will contain 50 numbers, representing 50 means of 5 randomly chosen numbers.
#Note that at the start of each cycle, R DOES replace all the numbers back into the main data set – so it is always sampling from the full 100 data points.  

#try to find se with larger sample size
sample(barnacles$number, 20, replace = F)
mean(sample(barnacles$number, 20, replace = F))
estimated_mean20<- c()
for (i in 1:50) {estimated_mean20[i] <- mean(sample(barnacles$number, 20, replace = F)) }

#plot histograms of the two data sets, on the same panel so we can compare them directly.
par(mfrow=c(2,1))

#Plot graphs
hist(estimated_mean5, xlim=c(100,300), main=NULL)
abline(v=mean(barnacles$number),col="red", lty=2,lwd=3)

hist(estimated_mean20, xlim=c(100,300), main=NULL)
abline(v=mean(barnacles$number),col="red", lty=2,lwd=3)


# Make a sample first
sample_1 <- sample(barnacles$number, 5, replace = F)
# Calculate the se using the smaple
sd(sample_1) / sqrt (5)

# se for larger samples
sample_2 <- sample(barnacles$number, 20, replace = F)
sd(sample_2) / sqrt (20)

plot(estimated_mean5, xlim=c(0,50), main=NULL)
abline(v=mean(barnacles$number),col="red", lty=2,lwd=3)

plot(estimated_mean20, xlim=c(0,50), main=NULL)
abline(v=mean(barnacles$number),col="red", lty=2,lwd=3)


