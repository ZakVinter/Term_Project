library(ggridges)
library(cowplot)
library(RColorBrewer)
library(ggtext)


ggsave("~/Documents/Github/Term_Project/Data/Graphs/combined_line.png", plot = combined_line)


legend.title = element_text(color="black", size=12, face="bold"),






ggplot(Joined_Year)+geom_smooth(se=F,aes(x = years, y = scot_pen_per_team, col = "black")) +
  geom_smooth(se=F,aes(x = years, y = eng_pen_per_team, col = "red")) + ylim(3,7) + xlim(2013,2021)


ggplot(Joined_Year)+geom_smooth(aes(x = years, y = scot_pen_per_team, col = "black")) +
  geom_smooth(aes(x = years, y = eng_pen_per_team, col = "red"))


scale_y_continuous( limits=c(4,6.5),
                    minor_breaks = NULL, 
                    expand = c(0,1)) +geom_smooth() 




filter(tidy_joined, country=="Scotland") %>%
  ggplot(aes(years, pen_per_team)) +
  geom_line() +
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  scale_y_continuous( limits=c(3.5,6.5),
                      minor_breaks = NULL, 
                      expand = c(0,1))



ggplot(aes(x=years, y=pen_per_team)) + geom_smooth() +
  ggplot(aes(x=years, y=pen_per_team)) + geom_smooth() +
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  scale_y_continuous( limits=c(3.5,6.5),
                      minor_breaks = NULL, 
                      expand = c(0,1))

tidy_joined %>%
  ggplot(aes(pen_per_team, country)) + 
  geom_density_ridges()



tidy_joined %>%
  ggplot(aes(years, y= pen_per_team, fill = country)) +
  geom_density(alpha=0.3, position = "stack") + 
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021)) +
  ylim(3.5,6.5)





theme(axis.text.x = element_text(color="black", face="bold"), axis.text.y = element_text(color="black", face="bold")) +
  theme(legend.title = element_text(color="black", size=12, face="bold"))

