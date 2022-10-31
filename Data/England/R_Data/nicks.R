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

ggplot(data=Annual_Data,aes(x=Years, y=pens_per_team)) + geom_point()+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
  scale_y_continuous( limits=c(4,6.5),
                    minor_breaks = NULL, 
                    expand = c(0,1)) +geom_smooth() 

#using cord_cartesian:this allows you to zoom into the x and y axises. 
ggplot(data=Annual_Data,aes(x=Years, y=pens_per_team)) + geom_point()+
  scale_x_continuous(limits = c(2013,2021), 
                     breaks = c(2013,2014,2015,2016,2017,2018,2019,2020,2021))+
                      coord_cartesian(ylim =c(4,6.5))  



  



