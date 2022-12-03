

#load in necessary packages
library(pacman)

p_load(tidyverse, tidyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite, dplyr)


#this code scrapes all of the data between 2013-2021 for all penalties given in Scotland


#the same steps will be repeated 9 times for each year.





###############################################



#2021


#Saving the website as an object
url_21 ="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2021" 





#the selector represents the table that we are scraping from the webpage
selector = "#yw1 > table"





#from this website, take this table and put into a table format and save it as 
#a new object.
scottland_21=read_html(url_21)



#create data set
record_21= scottland_21%>%
  html_elements(selector)%>%
  html_table 




#open data set
record_21=record_21[[1]]






#remove first two column that are unnecessary 
record_21=record_21[,-1:-2,]





#remove last column which is not necessary for the analysis
record_21=record_21[,-6]




# name all the variables
names(record_21)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")




#make a variable that sums the total number of goals by all teams in the 
#season.
record_21<- record_21|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))
 
  
  




#this variable is created to show which year these penalties were given in.
record_21<- record_21|> 
  mutate(Year = 2021 ) 




#move this variable to the second column
record_21<- record_21|> 
  relocate(Year,.before= PENALTIES_RECEIVED)
  





#########################################


#the exact same process but for 2020


#2020 




url_2020="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2020" 





selector = "#yw1 > table"






scottland_20=read_html(url_2020)





record_20= scottland_20%>%
  html_elements(selector)%>%
  html_table 





record_20=record_20[[1]]




record_20=record_20[,-1:-2,]





record_20=record_20[,-6]





names(record_20)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")




record_20<- record_20|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))




record_20<- record_20|> 
  mutate(Year = 2020 ) 




record_20<- record_20|> 
  relocate(Year,.before= PENALTIES_RECEIVED) 






################################################



#2019 




url_2019="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2019" 




selector = "#yw1 > table"






scottland_19=read_html(url_2019)





record_19= scottland_19%>%
  html_elements(selector)%>%
  html_table 




record_19=record_19[[1]]




record_19=record_19[,-1:-2,]





record_19=record_19[,-6]






names(record_19)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")






record_19<- record_19|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))






record_19<- record_19|> 
  mutate(Year = 2019 ) 





record_19<- record_19|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  








#########################################


#2018 




url_2018="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2018" 





selector = "#yw1 > table"






scottland_18=read_html(url_2018)






record_18= scottland_18%>%
  html_elements(selector)%>%
  html_table 






record_18=record_18[[1]]





record_18=record_18[,-1:-2,]





record_18=record_18[,-6]





names(record_18)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")





record_18<- record_18|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))






record_18<- record_18|> 
  mutate(Year = 2018 ) 





record_18<- record_18|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  









###########################################


#2017 





url_2017="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2017" 




selector = "#yw1 > table"







scottland_17=read_html(url_2017)





record_17= scottland_17%>%
  html_elements(selector)%>%
  html_table 





record_17=record_17[[1]]




record_17=record_17[,-1:-2,]





record_17=record_17[,-6]





names(record_17)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")





record_17<- record_17|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))





record_17<- record_17|> 
  mutate(Year = 2017 ) 





record_17<- record_17|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  







##########################################


#2016 




url_2016="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2016"





selector = "#yw1 > table"






scottland_16=read_html(url_2016)






record_16= scottland_16%>%
  html_elements(selector)%>%
  html_table 





record_16=record_16[[1]]




record_16=record_16[,-1:-2,]




record_16=record_16[,-6]




names(record_16)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")




record_16<- record_16|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))






record_16<- record_16|> 
  mutate(Year = 2016 ) 






record_16<- record_16|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  







############################################




#2015 




url_2015="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2015"





selector = "#yw1 > table"






scottland_15=read_html(url_2015)






record_15= scottland_15%>%
  html_elements(selector)%>%
  html_table 






record_15=record_15[[1]]





record_15=record_15[,-1:-2,]





record_15=record_15[,-6]






names(record_15)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")






record_15<- record_15|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))





record_15<- record_15|> 
  mutate(Year = 2015) 





record_15<- record_15|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  









################################################


#2014 




url_2014="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2014"





selector = "#yw1 > table"





scottland_14=read_html(url_2014)






record_14= scottland_14%>%
  html_elements(selector)%>%
  html_table 






record_14=record_14[[1]]






record_14=record_14[,-1:-2,]






record_14=record_14[,-6]






names(record_14)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")





record_14<- record_14|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))





record_14<- record_14|> 
  mutate(Year = 2014) 





record_14<- record_14|> 
  relocate(Year,.before= PENALTIES_RECEIVED)  








###########################################


#2013 





url_2013="https://www.transfermarkt.us/scottish-premiership/topErhalteneElfmeter/wettbewerb/SC1/plus/1?saison_id=2013"






selector = "#yw1 > table"







scottland_13=read_html(url_2013)






record_13= scottland_13%>%
  html_elements(selector)%>%
  html_table 





record_13=record_13[[1]]





record_13=record_13[,-1:-2,]





record_13=record_13[,-6]





names(record_13)=c("CLUB","PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE")






record_13<- record_13|> 
  mutate(TOTAL= sum(PENALTIES_RECEIVED))








record_13<- record_13|> 
  mutate(Year = 2013) 






record_13<- record_13|> 
  relocate(Year,.before= PENALTIES_RECEIVED)   


################################################


#save all of these yearly data sets

save(record_13, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_13.Rdata")

save(record_14, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_14.Rdata")

save(record_15, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_15.Rdata")

save(record_16, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_16.Rdata")

save(record_17, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_17.Rdata")

save(record_18, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_18.Rdata")

save(record_19, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_19.Rdata")

save(record_20, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_20.Rdata")

save(record_21, file = "Github/Term_Project/R_Data/Scotland/Yearly/Scotland_21.Rdata")



#############################################



#creating a data set that includes the total number of penalties across the 
#country in each year





# create a vector for the all years we have data for
Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)




#this vector is the total amount of penalties received per year in Scotland
Penalties_received<-c(51,48,77,62,54,68,47,67,56)



#create a data set with these two vectors
Annual_Scotland<- data.frame(Years,Penalties_received)



#making the pen_per_team for Scotland variable rounded to two decimal places
Annual_Scotland = Annual_Scotland %>%
  mutate(
    pen_per_team = round(Annual_Scotland$pen_per_team, digits = 2)
  )




#new variable that calculated the number of penalties per team (there are 12 
#teams in Scotland)
Annual_Scotland = Annual_Scotland %>%
  mutate(
    pen_per_team = Penalties_received/12
  )




save(Annual_Scotland, file = "Github/Term_Project/R_Data/Scotland/Annual_Scotland.Rdata")



#############################################






#create a data set that has observations for all clubs and all years
Appended_Scotland=rbind(record_13,record_14,record_15,record_16,record_17,record_18,record_19, record_20, record_21)




#rename variables for consistency
names(Appended_Scotland)=c("CLUB","YEAR", "PENALTIES_RECEIVED","SCORED","MISSED","CONVERSION RATE", "TOTAL")






#create a variable in the Scotland appended data set with 
#country name 
Appended_Scotland = Appended_Scotland %>%
  mutate(
    COUNTRY = "Scotland"
  )




#relocate to before penalties received
Appended_Scotland = Appended_Scotland %>%
  relocate(COUNTRY, .before = PENALTIES_RECEIVED)





save(Appended_Scotland, file = "Github/Term_Project/R_Data/Scotland/Appended_Scotland.Rdata")








#########################################################





#create tidy version of annual Scotland data
tidy_scot = Annual_Scotland





#new variable for country name
tidy_scot = tidy_scot %>%
  mutate(
    country = "Scotland"
  )




#move the country variable to the second column
tidy_scot = tidy_scot %>%
  relocate(country, .before = Penalties_received)




#rename variable names to allow merging
names(tidy_scot) = c("years", "country", "pen_rec", "pen_per_team")



save(tidy_scot, file = "Github/Term_Project/R_Data/Scotland/tidy_scot.Rdata")




