#load packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, dplyr, ggplot2)



#bring in appended data for England
load("~/GitHub/Term_Project/R_Data/England/Appended_England.Rdata")






#Find which clubs were in the league for all years during the studies time period 
table(Appended_England$CLUB)






#remove all teams that were not in the league for all years
All_Years = Appended_England %>%
  filter(CLUB != "Queens Park Rangers") %>%
  filter(CLUB != "Swansea City") %>%
  filter(CLUB != "Watford FC") %>%
  filter(CLUB != "West Bromwich Albion") %>%
  filter(CLUB != "Wolverhampton Wanderers") %>%
  filter(CLUB != "Newcastle United") %>%
  filter(CLUB != "Hull City") %>%
  filter(CLUB != "Leeds United") %>%
  filter(CLUB != "Leicester City") %>%
  filter(CLUB != "Middlesbrough FC") %>%
  filter(CLUB != "Sunderland AFC") %>%
  filter(CLUB != "Aston Villa") %>%
  filter(CLUB != "Brentford FC") %>%
  filter(CLUB != "Cardiff City") %>%
  filter(CLUB != "Huddersfield Town") %>%
  filter(CLUB != "Brighton & Hove Albion") %>% 
  filter(CLUB != "Fulham FC") %>%
  filter(CLUB != "Stoke City") %>%
  filter(CLUB != "Sheffield United") %>%
  filter(CLUB != "Norwich City") %>%
  filter(CLUB != "AFC Bournemouth") %>%
  filter(CLUB != "Burnley FC")








#remove total column all this is unnecessary for this analysis
All_Years = All_Years[,-8]







#check that the correct teams have been removed
table(All_Years$CLUB)








#######################################################



#create a data set including teams within the top 6
Top_6 = All_Years %>%
  filter(CLUB != "West Ham United") %>%
  filter(CLUB != "Southampton FC") %>%
  filter(CLUB != "Everton FC") %>%
  filter(CLUB != "Crystal Palace")






save(Top_6, file = "Github/Term_Project/R_Data/England/Top_6.Rdata")



############################################






#find the total number of penalties between these teams each year
Annual_Top_6 = Top_6 %>%
  group_by(YEAR) %>%
  mutate(
    sum(PENALTIES_RECEIVED)
  )



#creating a data set that includes the total number of penalties across the 
#country in each year




#create a vector of years
Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)





#vector of penalties for each year
Penalties_Recieved = c(40, 36, 25, 40, 25, 37, 45, 47, 44)






#create an annual data set out of the two vectors
Annual_England_Top = data.frame(Years, Penalties_Recieved)






#create a variable for the average number of penalties per team
Annual_England_Top = Annual_England_Top %>%
  mutate(
    average_pens = Penalties_Recieved/6
  )





#add a variable to specify the group of data
Annual_England_Top = Annual_England_Top %>%
  mutate(
    Type = "Top 6"
  )





############################################





#create a data set including teams out with the top 6
Not_Top_6 = All_Years %>%
  filter(CLUB != "Arsenal FC") %>%
  filter(CLUB != "Chelsea FC") %>%
  filter(CLUB != "Liverpool FC") %>%
  filter(CLUB != "Manchester City") %>%
  filter(CLUB != "Manchester United") %>%
  filter(CLUB != "Tottenham Hotspur")




save(Not_Top_6, file = "Github/Term_Project/R_Data/England/Not_Top_6.Rdata")




########################################





#find the total number of penalties between these teams each year
Annual_Not_Top_6 = Not_Top_6 %>%
  group_by(YEAR) %>%
  mutate(
    sum(PENALTIES_RECEIVED)
  )







#creating a data set that includes the total number of penalties across the 
#country in each year




#create a vector of years
Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)







#vector of penalties for each year
Penalties_Recieved = c(14, 18, 18, 21, 25, 26, 13, 19, 25)







#create an annual data set out of two vectors
Annual_England_Not = data.frame(Years, Penalties_Recieved)






#create a variable for the average number of penalties per team
Annual_England_Not = Annual_England_Not %>%
  mutate(
    average_pens = Penalties_Recieved/4
  )







#add a variable to specify the group of data
Annual_England_Not = Annual_England_Not %>%
  mutate(
    Type = "Not Top 6"
  )


##################################################



#combine data set to be able to create plots
Appended_Top_6 = rbind(Annual_England_Not, Annual_England_Top)





save(Appended_Top_6, file = "Github/Term_Project/R_Data/Joined/Appended_Top_6.Rdata")






#######################################################





#bring in appended data for England
load("~/GitHub/Term_Project/R_Data/Scotland/Appended_Scotland.Rdata")






#Find which clubs were in the league for all years during the studies time period 
table(Appended_Scotland$CLUB)



All_Years = Appended_Scotland




#remove total column all this is unnecessary for this analysis
All_Years = All_Years[,-8]







#check that the correct teams have been removed
table(All_Years$CLUB)




#create a data set including teams within the top 6
Top_5_Scot = All_Years %>%
  filter(CLUB != "Dundee FC") %>%
  filter(CLUB != "Dundee United FC") %>%
  filter(CLUB != "Hamilton Academical FC") %>%
  filter(CLUB != "Inverness Caledonian Thistle FC") %>%
  filter(CLUB != "Kilmarnock FC") %>%
  filter(CLUB != "Livingston FC") %>%
  filter(CLUB != "Motherwell FC") %>%
  filter(CLUB != "St. Mirren FC") %>%
  filter(CLUB != "Ross County FC") %>%
  filter(CLUB != "Partick Thistle FC") %>%
  filter(CLUB != "St. Johnstone FC")



#create a data set including teams within the top 6
Not_Top_5_Scot = All_Years %>%
  filter(CLUB != "Rangers FC") %>%
  filter(CLUB != "Celtic FC") %>%
  filter(CLUB != "Aberdeen FC") %>%
  filter(CLUB != "Hibernian FC") %>%
  filter(CLUB != "Heart of Midlothian FC") 


save(Top_5_Scot, file = "Github/Term_Project/R_Data/Scotland/Top_5_Scot.Rdata")

save(Not_Top_5_Scot, file = "Github/Term_Project/R_Data/Scotland/Not_Top_5_Scot.Rdata")


################################################################################

















ggplot(data=Appended_Top_6, aes(x=Years, y=average_pens, color = Type)) + geom_line(size = 1) +
  geom_point(color = "black", size = 1) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(2,12) +
  #add title
  ggtitle("Average Penalties per Rank in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per Team)") +
  #change the theme of the legend text
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        #remove the legend title
        legend.title=element_blank()
  ) +
  #create line to represent the policy implementation 
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)














ggplot(data=Appended_Top_6, aes(x=Years, y=average_pens, color = Type)) + geom_smooth(se=F, size = 1.25) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(1,12) +
  #add title
  ggtitle("Average Penalties per Rank in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per Team)") +
  #change the theme of the legend text
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        #remove legend title
        legend.title=element_blank()
  ) +
  #add line for the policies implementation date
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)















