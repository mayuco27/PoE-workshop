##
plot(richness~habitat,data=meadows)
# ↑gives errors

class(meadows$habitat)
# ↑gives [1] "character"
# click on the blue arrow next "meadows" in the environment square
# you will see the 'chr' and 'num'
# it tells the class of data 

levels(meadows$habitat)
# ↑gives "NULL
# means there is no levels inside data

meadows$habitat <- as.factor(meadows$habitat)
# "as.factor()" converts something to a factor
# This is saying:
# Take the column ‘habitat’ within the data set ‘meadows’, and convert it to a factor.

levels(meadows$habitat)
# ↑gives "[1] "acid"     "improved""

as.numeric(meadows$habitat)  
# ↑gives "[1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2"
# you can ask for reference numbers

plot(richness ~ as.numeric(habitat), data=meadows)
plot(richness ~ as.numeric(habitat), data=meadows, xaxt="n”)
# xaxt="n" this just tells R to leave the x axis blank.
##

plot(richness ~ as.numeric(habitat), data=meadows,xaxt="n", xlim=c(0.5, 2.5), xlab="Habitat", ylab="Richness")
axis(side =1, at=1:2, labels = c("acid", "improved"))
# side1~4: (1 = x axis, 2 = y axis, 3 = top, 4 = right side)
# 






