
library(pacman)
# this package allows us to load several packages at 1 time. 
p_load(tidyverse, tidyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite)
# all the things that are needed for webscraping. 
#2021

url_21 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2021"

# the same steps will be repeated 8 times. 

scorer_men_21 = read_html(url_21)

#Saving the website as an object.

selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
record_21 = scorer_men_21 |> 
  html_elements(selector) |>
  html_table()
# the selector represents the table that we are scraping from the webpage, then from here we are saying from this website, 
#take this table and put into a table format and save it as a new object. 
record_21 = record_21[[1]]


record_21 = record_21[,-1:-2,]

record_21 =record_21[,-6]
# these last few rows were to drop observations that didn't have any values.

names(record_21) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")
# naming the columns. since the original names didn't appear. 
record_21 = record_21 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )

# creating a column that has the total number of penalties received and put into a data set that can have an extra column.


# the next steps are the same for the entire set of years analyzed. 

#2020



url_20 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2020"

scorer_men_20 = read_html(url_20)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_20 = scorer_men_20 |> 
  html_elements(selector) |>
  html_table()

record_20 = records_20[[1]]


record_20 = record_20[,-1:-2,]

record_20 =record_20[,-6]


names(record_20) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_20 = record_20 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )



#2019

url_19 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2019"

scorer_men_19 = read_html(url_19)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_19 = scorer_men_19 |> 
  html_elements(selector) |>
  html_table()

record_19 = records_19[[1]]


record_19 = record_19[,-1:-2,]

record_19 =record_19[,-6]


names(record_19) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_19 = record_19 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )






#2018

url_18 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2018"

scorer_men_18 = read_html(url_18)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_18 = scorer_men_18 |> 
  html_elements(selector) |>
  html_table()

record_18 = records_18[[1]]


record_18 = record_18[,-1:-2,]

record_18 =record_18[,-6]


names(record_18) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_18 = record_18 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )



#2017

url_17 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2017"

scorer_men_17 = read_html(url_17)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_17 = scorer_men_17 |> 
  html_elements(selector) |>
  html_table()

record_17 = records_17[[1]]


record_17 = record_17[,-1:-2,]

record_17 =record_17[,-6]


names(record_17) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_17 = record_17 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )



#2016

url_16 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2016"

scorer_men_16 = read_html(url_16)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_16 = scorer_men_16 |> 
  html_elements(selector) |>
  html_table()

record_16 = records_16[[1]]


record_16 = record_16[,-1:-2,]

record_16 =record_16[,-6]


names(record_16) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_16 = record_16 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )




#2015

url_15 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2015"

scorer_men_15 = read_html(url_15)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_15 = scorer_men_15 |> 
  html_elements(selector) |>
  html_table()

record_15 = records_15[[1]]


record_15 = record_15[,-1:-2,]

record_15 =record_15[,-6]


names(record_15) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_15 = record_15 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )


#2014

url_14 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2014"

scorer_men_14 = read_html(url_14)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_14 = scorer_men_14 |> 
  html_elements(selector) |>
  html_table()

record_14 = records_14[[1]]


record_14 = record_14[,-1:-2,]

record_14 =record_14[,-6]


names(record_14) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_14 = record_14 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )



#2013

url_13 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2013"

scorer_men_13 = read_html(url_13)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records_13 = scorer_men_13 |> 
  html_elements(selector) |>
  html_table()

record_13 = records_13[[1]]


record_13 = record_13[,-1:-2,]

record_13 =record_13[,-6]


names(record_13) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_13 = record_13 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )


Years = c(2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
Penalties_Recieved = c(87, 82, 91, 106, 80, 103, 92, 125, 103)

# this is taking the years and sum of total penalties received and combinint them into one dataset.



Annual_Data = data.frame(Years, Penalties_Recieved)

# data set created that shows penalty minutes by year. 








