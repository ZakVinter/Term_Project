



#Need appended joined data set



Reg_Data = Appended_Joined[, -5:-7]

Reg_Data = Reg_Data[,-5]




Reg_Data$Time = ifelse(Reg_Data$YEAR >= 2019, 1, 0)


Reg_Data$Area = ifelse(Reg_Data$COUNTRY == "England", 1, 0)


Reg_Data = Reg_Data %>%
  mutate(
    Interaction = Time*Area
  )


reg_1 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data)


summary(reg_1)


############################

save(Reg_Data, file = "Github/Term_Project/R_Data/Econometrics/Reg_Data.Rdata")



