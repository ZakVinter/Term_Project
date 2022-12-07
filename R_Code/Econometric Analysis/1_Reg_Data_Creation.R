
#load in required packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse)




load("~/GitHub/Term_Project/R_Data/Joined/Appended_Joined.Rdata")





Reg_Data = Appended_Joined[, -5:-8]






Reg_Data$Time = ifelse(Reg_Data$YEAR >= 2019, 1, 0)


Reg_Data$Area = ifelse(Reg_Data$COUNTRY == "England", 1, 0)


Reg_Data = Reg_Data %>%
  mutate(
    Interaction = Time*Area
  )



save(Reg_Data, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data.Rdata")




#################################################################



load("~/GitHub/Term_Project/R_Data/England/Top_6.Rdata")
load("~/GitHub/Term_Project/R_Data/England/Not_Top_6.Rdata")



#add a variable to specify the group of data
Top_6 = Top_6 %>%
  mutate(
    Type = "Top 6"
  )



#add a variable to specify the group of data
Not_Top_6 = Not_Top_6 %>%
  mutate(
    Type = "Not Top 6"
  )



#combine data set to be able to create plots with tidy version of data
tidy_Top_6 = rbind(Top_6, Not_Top_6)



Reg_Data_2 = tidy_Top_6[, -5:-7]



Reg_Data_2$Time = ifelse(Reg_Data_2$YEAR >= 2019, 1, 0)


Reg_Data_2$Area = ifelse(Reg_Data_2$Type == "Top 6", 1, 0)


Reg_Data_2 = Reg_Data_2 %>%
  mutate(
    Interaction = Time*Area
  )



save(Reg_Data_2, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data_2.Rdata")




####################################################################


load("~/GitHub/Term_Project/R_Data/Scotland/Top_5_Scot.Rdata")




#add a variable to specify the group of data
Top_5_Scot = Top_5_Scot %>%
  mutate(
    Type = "Top 5"
  )





Tidy_Top_Teams = rbind(Top_5_Scot, Top_6)





save(Tidy_Top_Teams, file = "Github/Term_Project/R_Data/Joined/Tidy_Top_Teams.Rdata")







Reg_Data_3 = Tidy_Top_Teams[, -5:-7]






Reg_Data_3$Time = ifelse(Reg_Data_3$YEAR >= 2019, 1, 0)


Reg_Data_3$Area = ifelse(Reg_Data_3$COUNTRY == "England", 1, 0)


Reg_Data_3 = Reg_Data_3 %>%
  mutate(
    Interaction = Time*Area
  )



save(Reg_Data_3, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data_3.Rdata")



