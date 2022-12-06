
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, dplyr, xtable, stargazer, pander, tables, ascii, knitr)




load("~/GitHub/Term_Project/R_Data/England/Appended_England.Rdata")




#count how many years each club was in the league for
Year_Count_Eng = Appended_England %>%
  count(CLUB)





Total_Penalties_Eng = Appended_England %>%
  group_by(CLUB) %>%
  summarize(Total=sum(PENALTIES_RECEIVED))






Join_Eng = left_join(Total_Penalties_Eng, Year_Count_Eng, by = "CLUB")



Join_Eng = Join_Eng %>%
  mutate(
    Average = Total/n
  )



Join_Eng = Join_Eng %>%
  mutate(
    Average = round(Join_Eng$Average, digits = 2)
  )

Join_Eng = Join_Eng[,-2:-3]






save(Join_Eng, file = "Github/Term_Project/R_Data/England/Join_Eng.Rdata")

















