# Load example data
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)
summary(mydata)
str(mydata)

# Tell R to consider rank as a factor
mydata$rank <- factor(mydata$rank)

# Alter data for purpose of tutorial
mydata[mydata$admit == 1, 3] <- mydata[mydata$admit == 1, 3] + 1

# Plot data
library(ggplot2)
# met lineaire regressie
ggplot(mydata, aes(gpa, admit)) + 
	geom_point() +
	geom_smooth(method = "lm", se = FALSE) +
	coord_cartesian(ylim = c(0,1))

ggplot(mydata, aes(gpa, admit)) + 
	geom_point() +
	geom_smooth(method = "glm", se = FALSE, method.args = list(family = "binomial"))

	
# Model admit by gpa
gpamodel <- glm(admit ~ gpa, data = mydata, family = "binomial")
summary(gpamodel)
