
library(pacman)

p_load(tidyverse, tidyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite)

#2021

url_21 = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2021"

scorer_men_21 = read_html(url_21)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
record_21 = scorer_men_21 |> 
  html_elements(selector) |>
  html_table()

record_21 = record_21[[1]]


record_21 = record_21[,-1:-2,]

record_21 =record_21[,-6]


names(record_21) = c("CLUB", "PENALTIES_RECIEVED", "SCORED", "MISSED", "CONVERTION RATE")

record_21 = record_21 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )






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



#2017

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


















