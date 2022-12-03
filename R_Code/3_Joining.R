





#join data sets on Years variable
Joined_Year=left_join(Annual_England, Annual_Scotland)


#rename variables for clarity
names(Joined_Year) = c("years", "eng_pen_rec", "eng_pen_per_team", "scot_pen_rec", "scot_pen_per_team")




#create tidy version of annual Scotland data
tidy_scot = Annual_Scotland


#new variable for country name
tidy_scot = tidy_scot %>%
  mutate(
    country = "Scotland"
  )

#move the country variable to the second column
tidy_scot = tidy_scot %>%
    relocate(country, .before = Penalties_received)

#rename variable names to allow merging
names(tidy_scot) = c("years", "country", "pen_rec", "pen_per_team")



#same process but for England
tidy_eng = Annual_England


tidy_eng = tidy_eng %>%
  mutate(
    country = "England"
  )


tidy_eng = tidy_eng %>%
  relocate(country, .before = Penalties_Recieved)


names(tidy_eng) = c("years", "country", "pen_rec", "pen_per_team")



#combine the tidy two country data sets for combined tidy data
tidy_joined = rbind(tidy_eng, tidy_scot)










#create a variable in both the Scotland and England appended data sets with 
#country name 
Appended_England = Appended_England %>%
  mutate(
    COUNTRY = "England"
  )


#relocate to before penalties received
Appended_England = Appended_England %>%
  relocate(COUNTRY, .before = PENALTIES_RECEIVED)


Appended_Scotland = Appended_Scotland %>%
  mutate(
    COUNTRY = "Scotland"
  )


Appended_Scotland = Appended_Scotland %>%
  relocate(COUNTRY, .before = PENALTIES_RECEIVED)






#full data set for all clubs years and over both countries
Appended_Joined = rbind(Appended_England, Appended_Scotland)

