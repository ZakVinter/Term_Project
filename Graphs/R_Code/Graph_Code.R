

###############

#local regression of average penalties per team in England with additional points
eng_smooth<-ggplot(data=tidy_eng,aes(x=years, y=pen_per_team)) + geom_point(size = 1.5)+
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3.5,6.5) +
  geom_smooth(se=F, col = "red", size = 1.25) +
  #add title
  ggtitle("Average Penalties per Team in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change theme of title, and the two axis labels. Also positioning of title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
  axis.title.x = element_text(color="black", size=12, face="bold"),
  axis.title.y = element_text(color="black", size=12, face="bold")
  ) +
  #change theme of tick markers for both axis'
  theme(axis.text.x = element_text(color="black", face="bold"), axis.text.y = element_text(color="black", face="bold")) +
  #add line for the implementation of the policy
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)


###########


#local regression of average penalties per team in Scotland with additional points
scot_smooth<-ggplot(data=tidy_scot,aes(x=years, y=pen_per_team)) + geom_point(size = 1.5)+
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3.5,6.5) +
  geom_smooth(se=F, col = "blue", size = 1.25) +
  #add title
  ggtitle("Average Penalties per Team in Scotland") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change theme of title, and the two axis labels. Also positioning of title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold")
  ) +
  #change theme of tick markers for both axis'
  theme(axis.text.x = element_text(color="black", face="bold"), axis.text.y = element_text(color="black", face="bold"))



########


#plot of two local regressions. Average penalties per team for both Scotland and England
combined_smooth<-tidy_joined %>%
  ggplot(aes(years, pen_per_team, color = country)) +
  geom_smooth(size = 1.25) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3.5,6.5) +
  #add title
  ggtitle("Average Penalties per Team across Country") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change the theme of the legend text
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        #remove legend title
        legend.title=element_blank()
        ) +
  #add line for the policies implementation date
  geom_vline(xintercept=2018.5, 
               color = "black", size=1)


###########


#line plot with points for average penalties per team in England
eng_line<-ggplot(data=tidy_eng,aes(x=years, y=pen_per_team)) + geom_point(color = "black", size = 2)+
  geom_line(color = "red", size = 0.8) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3,7) +
  #add title
  ggtitle("Average Penalties per Team in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
  ) +
  #add line for the policies implementation date
  geom_vline(xintercept=2018.5, 
             color = "black", size=1) +
  #adding line of best fit for pre and post policy
  geom_smooth(data = eng_pre, method = "lm", se = FALSE, col = "black") +
  geom_smooth(data = eng_post, method = "lm", se = FALSE, col = "black")


############


#line plot with points for average penalties per team in Scotland
scot_line<-ggplot(data=tidy_scot,aes(x=years, y=pen_per_team)) + geom_point(color = "black", size = 2)+
  geom_line(color = "blue", size = 0.8)+
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3,7) +
  #add title
  ggtitle("Average Penalties per Team in Scotland") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
  )+
  #line of best fit for the whole time period
  geom_smooth( method = "lm", se = FALSE, col = "black")


############


#two line plots for both countries average penalties per team through time
combined_line<-tidy_joined %>%
  ggplot(aes(years, pen_per_team, color = country)) +
  geom_line(size = 1) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(3.5,6.5) +
  #add title
  ggtitle("Average Penalties per Team across Country") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per team)") +
  #change the theme of the legend text
  guides(color = guide_legend(label.theme = element_text(color = c("black"), face ="bold"))) +
  #change the theme and the position of the title
  theme(plot.title = element_text(hjust = 0.5, color="black", size=14, face="bold"),
        #change theme of axis', tick markers
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_text(color="black", face="bold"), 
        axis.text.y = element_text(color="black", face="bold"),
        #remove the legend title
        legend.title=element_blank()
  ) +
  #create line to represent the policy implementation 
  geom_vline(xintercept=2018.5, 
             color = "black", size=1)








