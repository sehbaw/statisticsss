#sehba wani # hw8

#1
  #performing a goodness of fit test
  #use of one categorical variable: zodiac signs and seeing the frequency comparison of the data
#H0: The number of births are the same for each zodiac sign 
#H1: The number of births are not the same for each zodiac sign. 
library(tidyverse) #we use tidyverse
library(readr)# use readr library for the read_tsv functioN!
library(dplyr)
zodiac_data <- read_tsv("zodiac.txt") #make sure that the data is in the same place as the R file 
head (zodiac_data) 
View(zodiac_data)
#isolate the data 
observed <- zodiac_data$Births
residual <- zodiac_data$Residual
expected <- zodiac_data$Expected
expected
length(expected)
length(observed)
#expected_new <- expected[expected >= 0]     

#Conclusion of the Data
  #We fail to reject the null due to the p-value of 0.9265 due to it 
      #being larger than the alpha level of 0.05

#chisq.test(x,p)
  #x is observed while p is expected
chisq.test(x=observed, p=c(1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12,1/12))
#assuming that every 
chisq.test(observed)
#chisq.test(observed)

#2 performing a one way 
#PART2 -- analgesics data
    #write the hypotheses both as words and in mathematical conclusions
#H0: The Drug B has a higher impact on pain levels
#H1: Drug B does not have a higher impact on pain levels. 
#conclusion: With a 0.05 percent significance level, we can reject the null hypothesis as the
#F statistic is smaller than the significance value. 
library(dplyr)
a_data <- read_tsv("analgesics.txt")
#View(a_data) #to see the data and make sure it worked 
a_data #just printing out the date in the console
oneway <- aov (Pain ~ Drug,data=a_data)#oneway anova function stored in a variable 
oneway #printing out a variable 
#summary of the anova 
summary(oneway) #this is to see if we need 
#run the tukey if there is statiscally significant w/anova
#this is a statistical significance because we are rejecting the null 
# we use 0.95 as a way to be sure of 
TukeyHSD(oneway, conf.level=.95)

#------------------------------3-------------------
# H0: The average number of hours is the same whether or not you are a male or female athlete. 
# H1: The average number of hours is not the same whether or not you are a male or female athlete.
# Conclusion: We fail to reject the null hypothesis as the Pr(F) statistic is larger than the significance level. 
  
tv_data <- read_csv("tv_watching.csv")
View(tv_data)
#additive 
#q's to ask: what are the response and predictor(aka explanatory) variables?
two_way <- aov(TVhours ~ Gender + Athlete, data=tv_data)
#summary is nicer to look at rather than printing it out 
summary(two_way)
#interaction
interacting_tv <-aov(TVhours ~ Gender * Athlete, data=tv_data)
summary(interacting_tv)

library(AICcmodavg)
model_set <- list(two_way, interacting_tv)
names <- c("two_way", "interacting_tv")
#aictab(model_set, modnames = "names")
aictab(model_set, names)
#interpret the results
summary(two_way)

#statistical significance can be found
TukeyHSD(two_way)



# install.packages("ggpubr")
# install.packages("broom")
# install.packages("AICcmodavg")




