aggregate(richness ~ species, data = inverts, mean) 

# Separate the data by the two separate tree species, to create two new data sets:
oak<- subset(inverts,species=="oak")
ash<- subset(inverts,species=="ash")

# Create a histogram ※"oak$richness" tells where to refer the data from
hist(oak$richness)

# "Abline" command to add aline, "v" means "make a vertical line", "lty" for dashed line, "lwd" for thicker line 
# "main=NULL" tells R to get rid of the main title of the graph
hist(oak$richness, main=NULL, xlab = "Invertebrate species richness")
abline(v=mean(oak$richness),col="red", lty=2, lwd=2 )
