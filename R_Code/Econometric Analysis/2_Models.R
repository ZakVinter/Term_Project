

if (!require("pacman")) install.packages("pacman")
pacman::p_load(estimatr, modelsummary)





load("~/GitHub/Term_Project/R_Data/Econometrics/Reg_Data.Rdata")
load("~/GitHub/Term_Project/R_Data/Econometrics/Reg_Data_2.Rdata")
load("~/GitHub/Term_Project/R_Data/Econometrics/Reg_Data_3.Rdata")


####################################################



reg_1 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data)


summary(reg_1)


##################





reg_1_robust = lm_robust(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data)



summary(reg_1_robust)







#####################################################









reg_2 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_2)


summary(reg_2)



##################


reg_2_robust = lm_robust(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_2)


summary(reg_2_robust)






###############################################################






reg_3 = lm(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_3)


summary(reg_3)



##########################




reg_3_robust = lm_robust(PENALTIES_RECEIVED ~ Time + Area + Interaction, data = Reg_Data_3)


summary(reg_3_robust)




















