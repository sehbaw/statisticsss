library(tidyverse)
Lyme <- read.csv("Lyme_Rates_by_State.csv")
View(Lyme)

Lyme2010 <- Lyme$X2010
Lyme2008 <- Lyme$X2008
Lyme2013 <- Lyme$X2013 

mean(Lyme2008)
LymeRates <- Lyme$X3.Year.Average.Incidence
View(LymeRates)
#=(1:9)*11
View(Lyme)
#is this right? 
ci = prop.test(x=11.4, n= 100000,conf.level=.95, correct=FALSE)
ci
#binomial test.. I chose to do a two-tail test because I wanted to compare the test between the years 
#2008
#rounded the average to an integer bc was getting an error so instead of 11.6 it is 12
test2008<- binom.test(12, 100000, 12/100000)
test2008
#year 2015
#rounded the average to an integer bc was getting an error so instead of 11.9 it is 12
test2015<- binom.test(12, 100000, 12/100000)
test2015
#GGI DATA
GlobalGap <- read.csv("GGI2013.csv")
View(GlobalGap)
GGI2013 <- GlobalGap$X2013
GGI2010 <- GlobalGap$X2010
GGI2008 <- GlobalGap$X2008

#calculating sample variance 
#2008 sample variance
var2008 <-var(GlobalGap$X2008)
var2008
#2010 sample variance
var2010 <-var(GlobalGap$X2010)
var2010
#2013 sample variance
var2013 <-var(GlobalGap$X2013)
var2013

#z-scores for 2008 and 2013

z_scores2008 <- (GGI2008-mean(GGI2008))/sd(GGI2008)
z_scores2008
z_scores2013 <- (GGI2013-mean(GGI2013))/sd(GGI2013)
z_scores2013





