#graphs for our data 


ggplot(Annual_Data, aes(pens_per_team)) + 
  geom_histogram(boundary=0) 


library()


summary(Annual_Data)
sum(Annual_Data$Years)
 


ggplot(Annual_Data, aes(x=Years,y=pens_per_team))+
  geom_point() 


as.numeric(Annual_Data$Years)


library(ggplot2)
library(dplyr)
gfg<-data.frame(Years=c(2013,2014,2015,2016,2017,2018,2019,2020,2021),
                Penalties_per_team=c(4.35,4.1,4.55,5.3,4.0,5.15,4.6,6.25,5.15))
 
england_grouped<- Appended_Joined|> 
  filter(COUNTRY=="England")


scot_grouped<- Appended_Joined|> 
  filter(COUNTRY=="Scotland")



rlang::last_error()
rlang:: last_trace()
#using cord_cartesian:this allows you to zoom into the x and y axises. 
ggplot(data=Annual_Data,aes(x=Years, y=pens_per_team)) + geom_point()+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
                      coord_cartesian(ylim =c(4,6.5))  


library(tidyverse)
if (!require("dslabs")) install.packages("dslabs")
library(dslabs)
  

library(cowplot)

title<- ggdraw()+ draw_label("Penalties by Year for England &Scotland",
              fontface = 'bold', x=0, hjust=-.11) + theme(plot.margin = margin(0,0,0,7))






combined_plots<-cowplot::plot_grid(hat,bat, labels="",label_size = 6, ncol = 1)
                  

vertical_allign<-plot_grid(title,combined_plots, ncol=1, rel_heights = c(0.1,1))



ggsave2("vertical_allign.pdf")


ggsave2("vertical_allign.png")





hat<-ggplot(data = england_grouped,aes(x=YEAR,y=TOTAL))+ scale_x_continuous(limits= c(2013,2021),
                                                                        
                                  breaks=c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
                      scale_y_continuous(limits=c(0,150), 
                                         minor_breaks= NULL, 
                                         expand=c(0,1))+geom_smooth(span=0.65, se=FALSE) +ggtitle("EN")+
                                          theme(plot.title = element_text(hjust=.5))


view(hat)






bat<-ggplot(data=scot_grouped,aes(x=YEAR, y=TOTAL)) + 
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  scale_y_continuous( limits=c(0,150),
                      minor_breaks = NULL, 
                      expand = c(0,1)) +geom_smooth(span=0.65,se=FALSE) +ggtitle("SC")+
  theme(plot.title=element_text(hjust = .5))

