# Calculate the mean abundance for each taxon
mean_worms<-mean(critters$worms)
mean_spiders<-mean(critters$spiders)

# Calculate the distance from each individual data point to the mean, by subtracting the mean from each data point
worm_differences<- critters$worms - mean_worms
spider_differences<- critters$spiders - mean_spiders

# Now now calculate the average distance from the mean for each data set
mean(worm_differences)
mean(spider_differences)
#　↑ This calculates both the positive and negative differences and they cancel out with eachother, resulting in a very small number of the outputs.

# Instead, remmove "-" by squaring them, and find mean-_squared
worm_differences_squared <- worm_differences^2
spider_differences_squared <- spider_differences^2 

sum_worm_differences_squared <- sum(worm_differences_squared)
sum_spider_differences_squared <- sum(spider_differences_squared)

# Measure the sample size
n<- length(critters$worms)

# the average distance form the mean... is called "VARIANCE"
var_worms<- sum_worm_differences_squared/(n-1)
var_spiders<- sum_spider_differences_squared/(n-1)

# 𝑠^2=Σ(𝑥𝑖 −¯𝑥)2" " /((𝑛−1)) : the mathematical formula of variance
# easiest way of finding variance
var(critters$worms)
var(critters$spiders)


