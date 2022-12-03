


#######################################################


load("~/GitHub/Term_Project/R_Data/England/tidy_eng.Rdata")

load("~/GitHub/Term_Project/R_Data/Scotland/tidy_scot.Rdata")





#combine the tidy two country data sets for combined tidy data
tidy_joined = rbind(tidy_eng, tidy_scot)




save(tidy_joined, file = "Github/Term_Project/R_Data/Joined/tidy_joined.Rdata")





##########################################################

#joining the two appended data sets



#load in data sets required for joining


load("~/GitHub/Term_Project/R_Data/England/Appended_England.Rdata")


load("~/GitHub/Term_Project/R_Data/Scotland/Appended_Scotland.Rdata")




#full data set for all clubs years and over both countries
Appended_Joined = rbind(Appended_England, Appended_Scotland)


save(Appended_Joined, file = "Github/Term_Project/R_Data/Joined/Appended_Joined.Rdata")


