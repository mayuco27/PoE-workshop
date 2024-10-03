mean(berries$diameter)

# "berries$diameter" tells where to sample, "5" tells the number to sample, 
# "replace = F" means replace=False, telling R not to keep replacing the numbers that continues after. 
sample(berries$diameter,5,replace = F)
mean(sample(berries$diameter,5,replace=F))

# The basic syntax for a ‘for loop’ 
# "for" sets it going, "i" means index, "1:500" is the range of indicies
# Inside {} is whatever is wanted to be repeated over and over
# for (i in 1:500) {...}

# So first we create an empty vector*, where we will save the means we are going to calculate:
estimate<-c()
for (i in 1:500) {estimate[i] <- mean(sample(berries$diameter,i,replace=F))  }

# ↑ This is saying 
# Run through the sequence 1 to 500. During each cycle, the number is temporarily called ‘i’.  
# At each number, draw that number of samples from the ‘diameter’ column, and calculate the mean of those.
# Then add that mean to the ith row of ‘estimate’ - each time the loop cycles, it adds one more row to ‘estimate’, until it reaches 500.
# At the end, ‘estimate’ will contain 500 numbers, representing the means of randomly chosen samples that vary systematically from 1 to 500 in size.  

plot(estimate, ylim=c(20,40))
abline(h=mean(berries$diameter))
# ↑ "h=mean" tells R to add a horizontal line at the mean



