
library(pacman)

p_load(tidyverse, tidyr, ggplot2, lubridate, Quandl, rvest, httr, jsonlite)








url = "https://www.transfermarkt.us/premier-league/topErhalteneElfmeter/wettbewerb/GB1/plus/1?saison_id=2021"

scorer_men = read_html(url)


selector = "#main > main > div:nth-child(6) > div > div > div.responsive-table"
records2 = scorer_men |> 
  html_elements(selector) |>
  html_table()

record_2 = records2[[1]]


record_2 = record_2[,-1:-2,]

record_2 =record_2[,-6]


names(record_2) = c("CLUB", "PENALTIES_RECIEVED", "SOCRED", "MISSED", "CONVERTION RATE")

record_22 = record_2 %>%
  mutate(
    TOTAL = sum(PENALTIES_RECIEVED)
  )







