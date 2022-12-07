#load in required packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(ggplot2, tidyverse)


#load the required data set
load("~/GitHub/Term_Project/R_Data/England/Appended_Top_6.Rdata")



##########################


top_6_line<-ggplot(data=Appended_Top_6, aes(x=Years, y=average_pens, color = Type)) + geom_line(size = 1) +
  geom_point(color = "black", size = 1) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(2,12) +
  #add title
  ggtitle("Average Penalties per Rank in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per Team)") +
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




ggsave("~/Github/Term_Project/R_Graphs/top_6_line.png", plot = top_6_line)





################################################






top_6_smooth<-ggplot(data=Appended_Top_6, aes(x=Years, y=average_pens, color = Type)) + geom_smooth(se=F, size = 1.25) +
  #set x axis limits and breaks for the year values in the data set
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  #set appropriate range for y values
  ylim(1,12) +
  #add title
  ggtitle("Average Penalties per Rank in England") +
  #label the axis'
  xlab("Years") +
  ylab("Average Penalties (per Team)") +
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






ggsave("~/Github/Term_Project/R_Graphs/top_6_smooth.png", plot = top_6_smooth)











