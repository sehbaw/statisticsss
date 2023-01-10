#gpa study hours 
#3.67 

#gpa data of high school

#Choosing this hypothesis test 
   #I chose a two sample z test because I wanted to see if the averages have significance as they are independent of aech other. 
#HA:

studentdata<- read.csv("gpa_study_hours.csv")
View(studentdata)

avggpa <- studentdata$gpa
studyhours <- studentdata$study_hours
meangpa <- mean(avggpa)
meangpa
standarddev <- sd(avggpa)
samplesize <-nrow(studentdata) #sample size 

#formula to do calculate test stat
# t = (x – μ) / (s/√n) 
# H1 is Ha...
      # ----WRITTEN HYPOTHESIS
#H0: The two averages are equal 
#Ha: The two averages are not equal. 
      # mathematical hypothesis
      #mathematical hypothesis 
# H0:μ1 =  μ2
# Ha: µ1 ≠ µ2

samplestatgpa <- (meangpa - 3.6) / (standarddev/sqrt(samplesize))
samplestatgpa 

#two sample t test in order to fit the data (there are two samples shown)
t.test(avggpa, studyhours, var.equal=TRUE)


#p-value is calculated 
#p_value=pt(q=-0.673216, df=192, lower.tail = FALSE)
#p_value

 

  #Results in the 
    # We fail to reject the bull hypothesis due to alpha being greater than 0.5. 
    #The p-value is above above alpha so therefore the null hypothesis is true. 

#RR: t > α, H0 is not rejected. 



