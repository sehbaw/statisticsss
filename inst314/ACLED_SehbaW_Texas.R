#Sehba Wani, Texas, HW2, 
# i had a lot more code, that was more complex/inefficient, but I didn't want to give the person grading this a hard time :p


#tidyverse
library(tidyverse)
#i had other libraries loaded like readr and dyplr but I dont think those were doing anything 

## import the csv 
ACLED <- read.csv("ACLED_NAm_2020_2022.csv")
## Convert event_date to date type ##
ACLED$event_date <- as.Date(ACLED$event_date, format="%d-%b-%y")

#calling to the object in order to use the filter function
ACLED[ACLED == ""] <- "unknown"


## filter the data to only get the state 
#i wanted to change the variable name to something simpler but couldn't think of a good one 
Texas_Protests <- filter(ACLED, admin1 == "Texas", event_type == "Protests")
View(Texas_Protests)
#df for each protest type for pie chart
Peaceful <- sum(Texas_Protests$sub_event_type == "Peaceful protest")/sum(Texas_Protests$event_type == "Protests")*100
With_Intervention <- sum(Texas_Protests$sub_event_type == "Protest with intervention")/sum(Texas_Protests$event_type == "Protests")*100
Protests_by_Type <- data.frame("Type" = c('Peaceful', 'With_Intervention'),
                               "Freq" = c(Peaceful, With_Intervention))
##PIE CHARTTT
library(ggplot2)
ggplot(Protests_by_Type, aes(x = "", y = Freq, fill = Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = paste0(Freq, "%")), position = position_stack(vjust = 0.5))
#still confused on the frequency but 
#bar chart
ggplot(data = Protests_by_Type) +
  geom_bar(mapping = aes(x = Type, y = Freq), stat = "identity")



#i used a stacked bar graph because I believe it properly showcases how vast the data is
c <- ggplot(data = Texas_Protests) +
  geom_bar(mapping = aes(x=event_date, fill = assoc_actor_1)) +
  theme(legend.position = "none") 
c #no legend because it is too much
#6
  #event_type - character -- bimodal
  #assoc_actor_1 - character -- poisson
  #sub_event_type - character - poisson
  #event_date - numeric - bimodal 

#7 -- return class 
#sometimes this works and sometimes this doesnt? I know the types though and was able to hover over the data due to View() function so I know how to find the data types of the variables used 
class(event_type)
class(sub_event_type)
class(event_date)
class(assoc_actor_1)


