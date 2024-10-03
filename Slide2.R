x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(11:20)
plot(y~x)
q<-x^2

## Test yourself
# Question 1
# The average weight of a meerkat pup is 51.5g at birth. 
# They gain an average of 1.5 grams per day up to the age of 6 months. 
# Create a plot to illustrate the relationship between age and weight in juvenile meerkats.
##

# Answer (six days)
a<-c(1,2,3,4,5,6)
b<-c(51.5,53.0,54.5,56.0,57.5,59.0)
plot(b~a)

# Answer2 ++ customising plot graph
x <- c(0:180)
c<- 51.5
m<- 1.5
y<- c+m*x
plot(y~x, type="l", col="red",xlab="Age (days)", ylab="Weight (g)")

# Plotting 'sqrt a' and 'a' relationship in a simpler way
c<-sqrt(a)
plot(c~a)
plot(sqrt(a)~a)

#Removing objects &clearing R's memory
rm(x)			
rm(y)		
rm(q)
#Removing everything in one go 
rm(list=ls())	

## Test yourself
#In 2019, SEPA* estimated that there were only 200 salmon spawning in the river Almond. 
#Long term data indicates that the spawning population is declining by 1.5 fish per year. 
#SEPA also estimate that the population will become unviable below 25.
#Use the logic we have just been exploring to plot the number of salmon we expect to be in the river over the next 200 years.
#When will the population become unviable?
##

# Answer 
x<-c(0:200)
c<- 200
m<- -1.5
y<-c+m*x
plot(y~x)
plot(y~x, type="l", col="red",xlab="Year", ylab="Salmon Population")

# Answer2 ylim(-,-), xlim(-,-) limits the range of values for yaxis, xaxis.
plot(y~x,
     type="l",col="red",
     xlab="Years from present",
     ylab="Number of salmon",
     ylim=c(0,200))


