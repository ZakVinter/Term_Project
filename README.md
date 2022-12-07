# Term_Project


## Code


### 1_All_England_Code.R


This is the first R script that should be ran to replicate this project. This script firstly web scrapes all penalties for the whole English football league for all years between 2013-2021 and all teams. This data is then save first as individual yearly data sets. Secondly, an appended data set is made with all observations for all years. Next, an Annual data set is made which takes the average penalties received by each team in each year. This is then made into a tidy version with Country name added to distinguish it from Scotland when merging occurs. Next, the data set was split into pre and post treatment. This is used to form lines of best fit in visualizations.


### 2_All_Scotland_Code.R


This code does the same as what has been described above, however no pre and post data set are due to no treatment in this country.


### 3_Joining.R


This r script combines both the tidy and appended forms of each data set together. This makes the tidy_joined and Appended_Joined data sets.


### 4_Graph_Code.R


This r script runs the visualizations used in the write-up. This is where we worked on the graphs and found the most efficient layout.


### 5_Rank.R


This r script is used to separate clubs in both Scotland and England into big vs small clubs. Two data sets are created for England with one including the 6 best teams and the other, the teams that are not in the top six. This again was done for Scotland, however the top 5 teams were used. Secondly, a data set was created that has the average number of penalties received per team for each year for both the top 6 clubs and the club that are not in the top six. This data is used to create visualizations between the two sets of clubs in 6_Top_6_Graph.R.


### 6_Top_6.R


Within this r script visualizations were created that showed the relationship difference in penalties received for big teams vs small teams. 


## Econometric Analysis


### 1_Reg_Data_Creation.R


This r script generates the specific data sets required to run the econometric analysis.


### 2_Models.R


The econometric models were created here. 



