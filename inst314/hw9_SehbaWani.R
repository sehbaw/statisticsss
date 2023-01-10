#SEHBA WANI 
#hw9
# The plots don't have all the proper labels because I could not find the label arguments for what I was using! Sorry I know they are not the best :/

# Use the following dataset: (sat.xls Download sat.xls) Information about this dataset can be found at: https://onlinestatbook.com/2/case_studies/sat.htmlLinks to an external site.
library(tidyverse)
library(ggplot2)
library(readxl)
library(ggpubr)
#library(VGAM)
# High School GPA and University GPA
# Calculate the correlation coefficient. Express the results properly in words. (5 pts)

  #correlation coeffiecient
#documentation for calculating coeffcient: http://www.r-tutor.com/elementary-statistics/numerical-measures/correlation-coefficient
#H0:
#HA:
gpa <- read_excel("sat.xls")
#View(gpa)
hs_gpa <- gpa$high_GPA #x 
univ_gpa <- gpa$univ_GPA #y
#do a correlational test between the two variables
cor.test(hs_gpa, univ_gpa, method = "pearson")

# Create a scatter plot comparing the two. (5 pts)...scatterplot should be run first
#ggscatter(gpa,x="hs_gpa",y="univ_gpa",combine=FALSE,add= "reg.line",conf.int=TRUE,cor.coeff=TRUE)
#ggplot(gpa, x=x, y=y)
my_plot <- ggplot(gpa, aes(x = hs_gpa, y = univ_gpa )) +
  geom_point() +
  stat_smooth(method = "lm") + ggtitle("High School GPA .vs. University GPA")
my_plot
# Do a simple linear regression. Include an assessment of assumptions and express your results in words and mathematically. (5 pts for assessing each assumption, 5 pts for the regression analysis and 5 pts for the correct reporting of the results)

attach(hs_gpa)
#kendall.tau(hs_gpa, univ_gpa) #calculating kendall tau not possible 
# qqnorm(hs_gpa, main="high school gpa")
# qqline(hs_gpa)
# qqnorm(univ_gpa, main="university gpa")
# qqline(univ_gpa)
model <- lm(formula=univ_gpa~hs_gpa)
summary(model)
res <- resid(model)
plot(fitted(model),res)
abline(0,0)
#normal plot on the res
qqnorm(res)
qqline(res)
boxplot(res, main="Comparison of HS and Uni GPA")
lm(formula=univ_gpa~hs_gpa)
scatter.smooth(hs_gpa, univ_gpa, main='High School GPA vs University GPA')

#Math SAT and Computer Science GPA
# Calculate the correlation coefficient. Express the results properly in words.(5 pts)
gpa <- read_excel("sat.xls")
#View(gpa)
sat_math <- gpa$math_SAT#x 
comp_gpa <- gpa$comp_GPA #y
cor.test(sat_math, comp_gpa, method = "pearson")# Create a scatter plot comparing the two. (5 pts)

my_plot2 <- ggplot(gpa, aes(x = sat_math, y = comp_gpa )) +
  geom_point() +
  stat_smooth(method = "lm") + ggtitle("SAT Math .vs. CompSci GPA")
my_plot2

#  ----- linear regression for part 2 
# Do a simple linear regression. Include an assessment of assumptions and express your results in words and mathematically. (5 pts for assessing each assumption, 5 pts for the regression analysis and 5 pts for the correct reporting of the results)
model2 <- lm(formula=comp_gpa~sat_math)
summary(model2)
res2 <- resid(model2)
plot(fitted(model2),res2)
abline(0,0)

qqnorm(res2)
qqline(res2)

#testing normality on the residuals 
#https://medium.com/@andrewhnberry/checking-your-linear-regression-assumptions-and-how-to-check-them-338f770acb57
