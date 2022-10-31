
eng_smooth<-ggplot(data=tidy_eng,aes(x=years, y=pen_per_team)) + geom_point(size = 1.5)+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3.5,6.5) +
  geom_smooth(se=F, col = "red", size = 1.25) +
  ggtitle("Penalties per Team in England") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
  axis.title.x = element_text(color="black", size=12, face="bold"),
  axis.title.y = element_text(color="black", size=12, face="bold")
  ) +
  theme(axis.text.x = element_text(color="black", face="bold"), axis.text.y = element_text(color="black", face="bold")) +
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)




scot_smooth<-ggplot(data=tidy_scot,aes(x=years, y=pen_per_team)) + geom_point(size = 1.5)+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3.5,6.5) +
  geom_smooth(se=F, col = "blue", size = 1.25) +
  ggtitle("Penalties per Team in Scotland") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold")
  ) +
  theme(axis.text.x = element_text(color="black", face="bold"), axis.text.y = element_text(color="black", face="bold"))




combined_smooth<-tidy_joined %>%
  ggplot(aes(years, pen_per_team, color = country)) +
  geom_smooth(size = 1.25) +
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3.5,6.5) +
  ggtitle("Penalties per Team across Country") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        legend.title=element_blank()
        ) +
  geom_vline(xintercept=2018.5, 
               color = "black", size=1)





eng_line<-ggplot(data=tidy_eng,aes(x=years, y=pen_per_team)) + geom_point(color = "black", size = 2)+
  geom_line(color = "red", size = 0.8) +
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3,7) +
  ggtitle("Penalties per Team in England") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
  ) +
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)
  


scot_line<-ggplot(data=tidy_scot,aes(x=years, y=pen_per_team)) + geom_point(color = "black", size = 2)+
  geom_line(color = "blue", size = 0.8)+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3,7) +
  ggtitle("Penalties per Team in Scotland") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
  )



combined_line<-tidy_joined %>%
  ggplot(aes(years, pen_per_team, color = country)) +
  geom_line(size = 1) +
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  ylim(3.5,6.5) +
  ggtitle("Penalties per Team across Country") +
  xlab("Years") +
  ylab("Penalties (per team)") +
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        legend.title=element_blank()
  ) +
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)



