
if (!require("pacman")) install.packages("pacman")
pacman::p_load(estimatr)



load("~/GitHub/Term_Project/R_Data/Joined/Tidy_Top_Teams.Rdata")





#Need appended joined data set



Reg_Data_3 = Tidy_Top_Teams[, -5:-7]






Reg_Data_3$Time = ifelse(Reg_Data_3$YEAR >= 2019, 1, 0)


Reg_Data_3$Area = ifelse(Reg_Data_3$COUNTRY == "England", 1, 0)


Reg_Data_3 = Reg_Data_3 %>%
  mutate(
    Interaction = Time*Area
  )



save(Reg_Data_3, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data_3.Rdata")




###########################################


reg_3 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_3)


summary(reg_3)



#######################################


reg_3_robust = lm_robust(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_3)


summary(reg_3_robust)

















































