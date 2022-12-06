if (!require("pacman")) install.packages("pacman")
pacman::p_load(estimatr)




#Need appended joined data set



Reg_Data_2 = tidy_Top_6[, -5:-7]

Reg_Data_2 = Reg_Data_2[,-5]




Reg_Data_2$Time = ifelse(Reg_Data_2$YEAR >= 2019, 1, 0)


Reg_Data_2$Area = ifelse(Reg_Data_2$Type == "Top 6", 1, 0)


Reg_Data_2 = Reg_Data_2 %>%
  mutate(
    Interaction = Time*Area
  )



save(Reg_Data_2, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data_2.Rdata")




###########################################


reg_2 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_2)


summary(reg_2)



#######################################


reg_2_robust = lm_robust(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_2)


summary(reg_2_robust)










