
library(pacman)
# this package allows us to load several packages at 1 time. 
p_load(tidyverse, tidyr, dplyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite)
# all the things that are needed for webscraping. 

#the same steps will be repeated 9 times for each year.

#2021



#Saving the website as an object.
url_21 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/?saison_id=2021"



scorer_men_21 = read_html(url_21)


# the selector represents the table that we are scraping from the webpage, 
#then from here we are saying from this website, take this table and put into 
#a table format and save it as a new object.
selector_21 = "#main > main > div:nth-child(7) > div.large-8.columns > div > div.responsive-table"
record_21 = scorer_men_21 %>%
  html_elements(selector_21) %>%
  html_table()



 
record_21 = record_21[[1]]



# these last few columns were to drop observations that didn't have any values.
record_21 = record_21[,-1:-2,]

record_21 = record_21[,-6]


# name all the variables
names(record_21) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERSION RATE")


# make a variable that sums the total number of goals by all teams in the 
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

#Move this variable to the second column
record_21 <- record_21 %>%
  relocate(Year, .before = PENALTIES_RECIEVED)


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








Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
Penalties_Recieved = c(87, 82, 91, 106, 80, 103, 92, 125, 103)


Annual_Data = data.frame(Years, Penalties_Recieved)

Appended_Data = rbind(record_13, record_14,
                      record_15, record_16,
                      record_17, record_18,
                      record_19, record_20,
                      record_21)





save(Appended_Data, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Appended_England.Rdata")

save(Annual_Data, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Annual_England.Rdata")


save(record_13, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_13.Rdata")

save(record_14, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_14.Rdata")

save(record_15, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_15.Rdata")

save(record_16, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_16.Rdata")

save(record_17, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_17.Rdata")

save(record_18, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_18.Rdata")

save(record_19, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_19.Rdata")

save(record_20, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_20.Rdata")

save(record_21, file ="~/Documents/GitHub/Term_Project/Data/England/R_Data/Yearly/England_21.Rdata")












