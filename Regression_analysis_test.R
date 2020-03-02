setwd("C:/Users/Alice/Desktop/Projects_R/Conflict_data/data")
#Prepare ACLED data
library(dplyr)
library(tidyr)
data_acledtest <- read.csv("ACLED_data_2018 TEST.csv")
#Calculate Pearson's correlation 
PearsonR <- cor(data_acledtest$Highest.temp..Celsius., data_acledtest$fatalities, method="pearson")
#Calculate R squared. Pearson's R squared.Prediction error is 40% smaller when we use the regression line compares to when we employ the mean. We can also say 40% of the variation in the independent variable is explained by our dependent variable.
Rsq <- PearsonR ^ 2
#Calculate the intercept and the slope. Lm stand for Linear Model. 
lm(data_acledtest$Highest.temp..Celsius. ~ data_acledtest$fatalities)
#Use ggplot to create a scatterplot. Geom_smooth, method lm attribute allows to plot the regression line. Abline is the way to do this in base R. Calculates it per colour.
library(ggplot2)
scatterplottest <- ggplot(data = data_acledtest, aes(x=Highest.temp..Celsius., y=fatalities,colour=event_type)) +
  geom_point() +
  geom_smooth(method = "lm")
