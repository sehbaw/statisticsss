
      # SEHBA WANI. 09.18.22. HW2, Texas 

# Choose a state to focus on for this homework (any state you want) and limit your analysis to only that state (column: admin1). Create an RStudio project named "ACLED_YourName_StateChosen.R" with the appropriate substitutions for name and state (i.e. ACLED_Sami_Maryland.R). Note the state you chose as a comment at the top of your code.
# Import the csv file to R. Limit your data set to the state you chose to focus on using whichever method you choose.
# Create a bar graph of the types of protests which is the sub_event_type column (note: you will have to select for only event_type “Protests” first)
# Create a pie chart that compares the percentage of the different types of protests (sub-event-type).
# Finally create a graphic or graphics (choose which you think is best and explain why you chose it as a comment in your code or as a separate document) for the group protesting by date (assoc_actor1). Amongst the choices are a stacked bar graph and overlaid lines, but you are free to choose something else.
# Identify the type of variable for each and the distribution for each (again, as a comment in your code or as a separate document). Note: I am not asking you to have R tell you what it thinks the data type is, but what you think it is.
# Have R return the data type for each variable. Did R guess the data type correctly?
# Upload your project.

   #begnning of code 
#crtl + L clears the terminal 

#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(dplyr)
library(ggplot2)

#setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#import the csv
#struggled so much with working directory for some reason so I had to do it via Rstudio
texasData <- read_csv(file="ACLED_NAm_2020_2022.csv")
#in order to access the data can use the function or command View(variable name) in this case View(texasData)
view(texasData)
    #print(is.data.frame(texasData))
#isolating the column

# texasData["admin1"]
#still need to understand what the dollar sign means because I think I do but also ??? all I know it is working 
newColumn <- texasData$admin1 == "Texas" 
b <- texasData %>%
  filter(admin1 == "Texas") %>%
  summarize(event_type)
ACLED[ACLED == ""] <- "unknown"
ACLED$event_date <- as.Date(ACLED$event_date, format="%d-%b-%y")
Texas_Protests <- filter(ACLED, admin1 == "Maryland", event_type == "Protests")
#View(Texas_Protests)

view (b)
D=subset(isolatedData,event_type =="Protests")
sub_event_types <- subset(isolatedData, sub_event_type == "Protests")
View(D)
View(sub_event_types)
#D[order(D$TotalPop)[1:5],]

#bar graph code 
g <- ggplot(data = b) +
  geom_bar(mapping = aes(x = event_type, fill = event_type)) +
  theme(legend.position = "top") + ggtitle("Events in Texas")
#call of the bar graph code 
g

Peaceful <- sum(Texas_Protests$sub_event_type == "Peaceful protest")/sum(Texas_Protests$event_type == "Protests")*100
With_Intervention <- sum(Texas_Protests$sub_event_type == "Protest with intervention")/sum(Texas_Protests$event_type == "Protests")*100
Protests_by_Type <- data.frame("Type" = c('Peaceful', 'With_Intervention'),
                               "Freq" = c(Peaceful, With_Intervention))
#pie chart 
library(ggplot2)
t <- ggplot(Texas_Protests, aes(x="", y = frequency(), fill = Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) + 
  geom_text(aes(label = paste0(Freq, "%")), position = position_stack(vjust = 0.5))
  t
# 


# #stacked bar graph, I chose a bar graph because that seemed like the best manner to approach to represent and compare the amount of qualitative data in this data set. 
#i hope this is right but if not I am so sorry, there was a lot of data
c <- ggplot(data = isolatedData) +
  geom_bar(mapping = aes(x=event_date, fill = assoc_actor_1)) +
  theme(legend.position = "none") 
  
#no legend because it is too much
c
# c <- ggplot(b, aes()) + 
#   geom_bar(position="stack", stat="identity")
# c

#6. types of variables 


#7. 



