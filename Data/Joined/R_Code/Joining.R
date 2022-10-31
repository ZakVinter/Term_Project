

#making the pen_per_team for Scotland variable rounded to two decimal places
Annual_Scotland = Annual_Scotland %>%
  mutate(
    pen_per_team = round(Annual_Scotland$pen_per_team, digits = 2)
  )


#same as above but for England
Annual_England = Annual_England %>%
  mutate(
    pens_per_team = round(Annual_England$pens_per_team, digits = 2)
  )




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




#full data set for all clubs years and over both countries
Appended_Joined = rbind(Appended_England, Appended_Scotland)



























ggplot(Joined_Year)+geom_smooth(se=F,aes(x = years, y = scot_pen_per_team, col = "black")) +
  geom_smooth(se=F,aes(x = years, y = eng_pen_per_team, col = "red")) + ylim(3,7) + xlim(2013,2021)


ggplot(Joined_Year)+geom_smooth(aes(x = years, y = scot_pen_per_team, col = "black")) +
  geom_smooth(aes(x = years, y = eng_pen_per_team, col = "red"))










as.character(tidy_joined$years)


library(ggridges)


tidy_joined %>%
  ggplot(aes(pen_per_team, fill = country)) +
  scale_x_continuous() + 
  geom_density(alpha=0.3, position = "stack") + 
  facet_grid(years~.)
  

tidy_joined %>%
  filter(years %in% c(2013, 2018) %>%
  ggplot(aes(pen_per_team, country)) + 
    geom_density_ridges()





tidy_joined %>%
  ggplot(aes(pen_per_team, country)) + 
  geom_density_ridges()
           


