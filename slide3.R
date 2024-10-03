## The effect of temperature on pollinator activity
# Data set: "bees"

# First thing to do, Visualise the data!!
plot(visits~temp,data=bees)

# Customising the plot graph ※'~degree~C' gives you the degrees symble
plot(visits~temp,data=bees,
     xlab="Temperature"  ~degree~C,
     ylab="Bee visits per 5 minutes")

# Shift + Command + N = new script

## Customising graph
#to change size, you use ‘cex’
#to change colour, you use ‘col’
#and to change shape, you use ‘pch’*

plot(visits~temp, data=bees,
     xlab= "Temperature" ~degree~C,
     ylab="Bee visits per 5 minutes",
     pch=16,
     col="red", 
     cex=2)

  
