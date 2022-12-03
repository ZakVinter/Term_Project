


#all packages needed for web-scraping. 
library(pacman)
p_load(tidyverse, tidyr, dplyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite)



#this code scrapes all of the data between 2013-2021 for all penalties given in England


#the same steps will be repeated 9 times for each year.





###############################################

#2021




#Saving the website as an object.
url_21 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2021"


#read the website in
scorer_men_21 = read_html(url_21)



#the selector represents the table that we are scraping from the webpage, 
#then from here we are saying from this website, take this table and put into a 
#table format and save it as a new object.
selector_21 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"


#create data set
record_21 = scorer_men_21 %>%
  html_elements(selector_21) %>%
  html_table()



#open data set
record_21 = record_21[[1]]



#remove first two column that are unnecessary 
record_21 = record_21[,-1:-2,]




#remove last column which is not necessary for the analysis
record_21 = record_21[,-6]







#name all the variables
names(record_21) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")





#make a variable that sums the total number of goals by all teams in the 
#season.
record_21 = record_21 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





#this variable is created to show which year these penalties were given in.
record_21 = record_21 %>%
  mutate(
    Year = 2021
  )



#move this variable to the second column
record_21 <- record_21 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)








########################################################

#the exact same process but for 2020

#2020



url_20 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2020"



scorer_men_20 = read_html(url_20)




selector_20 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_20 = scorer_men_20 |> 
  html_elements(selector_20) |>
  html_table()




record_20 = records_20[[1]]




record_20 = record_20[,-1:-2,]




record_20 =record_20[,-6]


names(record_20) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")





record_20 = record_20 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_20 = record_20 %>%
  mutate(
    Year = 2020
  )





record_20 <- record_20 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)





######################################################



#2019

url_19 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2019"




scorer_men_19 = read_html(url_19)






selector_19 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_19 = scorer_men_19 |> 
  html_elements(selector_19) |>
  html_table()



record_19 = records_19[[1]]




record_19 = record_19[,-1:-2,]




record_19 =record_19[,-6]




names(record_19) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")




record_19 = record_19 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )




record_19 = record_19 %>%
  mutate(
    Year = 2019
  )


record_19 <- record_19 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)







############################################



#2018



url_18 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2018"




scorer_men_18 = read_html(url_18)





selector_18 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_18 = scorer_men_18 |> 
  html_elements(selector_18) |>
  html_table()





record_18 = records_18[[1]]





record_18 = record_18[,-1:-2,]





record_18 =record_18[,-6]





names(record_18) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")





record_18 = record_18 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_18 = record_18 %>%
  mutate(
    Year = 2018
  )




record_18 <- record_18 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)






##############################################



#2017



url_17 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2017"




scorer_men_17 = read_html(url_17)





selector_17 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_17 = scorer_men_17 |> 
  html_elements(selector_17) |>
  html_table()




record_17 = records_17[[1]]





record_17 = record_17[,-1:-2,]




record_17 =record_17[,-6]





names(record_17) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")




record_17 = record_17 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_17 = record_17 %>%
  mutate(
    Year = 2017
  )






record_17 <- record_17 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)





#######################################




#2016




url_16 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2016"





scorer_men_16 = read_html(url_16)






selector_16 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"





records_16 = scorer_men_16 |> 
  html_elements(selector_16) |>
  html_table()




record_16 = records_16[[1]]





record_16 = record_16[,-1:-2,]




record_16 =record_16[,-6]






names(record_16) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")





record_16 = record_16 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_16 = record_16 %>%
  mutate(
    Year = 2016
  )




record_16 <- record_16 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)







#############################################


#2015





url_15 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2015"




scorer_men_15 = read_html(url_15)





selector_15 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"



records_15 = scorer_men_15 |> 
  html_elements(selector_15) |>
  html_table()





record_15 = records_15[[1]]




record_15 = record_15[,-1:-2,]




record_15 =record_15[,-6]





names(record_15) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")





record_15 = record_15 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_15 = record_15 %>%
  mutate(
    Year = 2015
  )





record_15 <- record_15 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)







###################################



#2014



url_14 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2014"




scorer_men_14 = read_html(url_14)




selector_14 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_14 = scorer_men_14 |> 
  html_elements(selector_14) |>
  html_table()




record_14 = records_14[[1]]





record_14 = record_14[,-1:-2,]




record_14 =record_14[,-6]




names(record_14) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")




record_14 = record_14 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_14 = record_14 %>%
  mutate(
    Year = 2014
  )





record_14 <- record_14 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)








############################################


#2013


url_13 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2013"




scorer_men_13 = read_html(url_13)




selector_13 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"




records_13 = scorer_men_13 |> 
  html_elements(selector_13) |>
  html_table()




record_13 = records_13[[1]]





record_13 = record_13[,-1:-2,]




record_13 =record_13[,-6]





names(record_13) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")




record_13 = record_13 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )





record_13 = record_13 %>%
  mutate(
    Year = 2013
  )






record_13 <- record_13 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)



#########################################################

#save all of these yearly data sets

save(record_13, file = "Github/Term_Project/R_Data/England/Yearly/England_13.Rdata")

save(record_14, file = "Github/Term_Project/R_Data/England/Yearly/England_14.Rdata")

save(record_15, file = "Github/Term_Project/R_Data/England/Yearly/England_15.Rdata")

save(record_16, file = "Github/Term_Project/R_Data/England/Yearly/England_16.Rdata")

save(record_17, file = "Github/Term_Project/R_Data/England/Yearly/England_17.Rdata")

save(record_18, file = "Github/Term_Project/R_Data/England/Yearly/England_18.Rdata")

save(record_19, file = "Github/Term_Project/R_Data/England/Yearly/England_19.Rdata")

save(record_20, file = "Github/Term_Project/R_Data/England/Yearly/England_20.Rdata")

save(record_21, file = "Github/Term_Project/R_Data/England/Yearly/England_21.Rdata")


#######################################################


#creating a data set that includes the total number of penalties across the 
#country in each year


#create a vector of years
Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)



#vector of penalties for each year
Penalties_Recieved = c(87, 82, 91, 106, 80, 103, 92, 125, 103)



#create an annual data set out of two vectors
Annual_England = data.frame(Years, Penalties_Recieved)




#making the pen_per_team for Scotland variable rounded to two decimal places
Annual_England = Annual_England %>%
  mutate(
    pens_per_team = round(Annual_England$pens_per_team, digits = 2)
  )




#create a new variable in the annual data set that measures penalties per team
Annual_England = Annual_England %>%
  mutate(
    pens_per_team = Penalties_Recieved/20
  )




save(Annual_England, file = "Github/Term_Project/R_Data/England/Annual_England.Rdata")






########################################







#create a data set that includes all the data for each individual team across all years





#combined data for all years and all teams in England
Appended_England = rbind(record_13, record_14,
                      record_15, record_16,
                      record_17, record_18,
                      record_19, record_20,
                      record_21)




#rename variables for consistency
names(Appended_England) = c("CLUB","YEAR", "PENALTIES_RECEIVED", "SCORED", "MISSED", "CONVERSION RATE", "TOTAL")



#create a variable in the England appended data set with 
#country name 
Appended_England = Appended_England %>%
  mutate(
    COUNTRY = "England"
  )




#relocate to before penalties received
Appended_England = Appended_England %>%
  relocate(COUNTRY, .before = PENALTIES_RECEIVED)






save(Appended_England, file = "Github/Term_Project/R_Data/England/Appended_England.Rdata")







############################################################


#create tidy version of annual England data
tidy_eng = Annual_England




#new variable for country name
tidy_eng = tidy_eng %>%
  mutate(
    country = "England"
  )




#move the country variable to the second column
tidy_eng = tidy_eng %>%
  relocate(country, .before = Penalties_Recieved)




#rename variable names to allow merging
names(tidy_eng) = c("years", "country", "pen_rec", "pen_per_team")



save(tidy_eng, file = "Github/Term_Project/R_Data/England/tidy_eng.Rdata")




