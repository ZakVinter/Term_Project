
library(pacman)
p_load(tidyverse, dplyr, xtable, stargazer, pander, tables, ascii, knitr)

#count how many years each club was in the league for
Year_Count_Scot = Appended_Scotland %>%
  count(CLUB)





Total_Penalties_Scot = Appended_Scotland %>%
  group_by(CLUB) %>%
  summarize(Total=sum(PENALTIES_RECEIVED))






Join_Scot = left_join(Total_Penalties_Scot, Year_Count_Scot, by = "CLUB")



Join_Scot = Join_Scot %>%
  mutate(
    Average = Total/n
  )



Join_Scot = Join_Scot %>%
  mutate(
    Average = round(Join_Scot$Average, digits = 2)
  )

Join_Scot = Join_Scot[,-2:-3]


save(Join_Scot, file = "Github/Term_Project/R_Data/Joined/Join_Scot.Rdata")

