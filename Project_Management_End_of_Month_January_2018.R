#---------------------------------------Project Managment Examples for the Classroom----------------------
library(xtable);library(stringr);library(stringi);library(readr);library(readxl)
#--------------------------------Data------------------------------------------------------------------------------------------------------

#-------------------2018----------------------
Project.Management.End.of.Month.January.2018.Data.df <- as.data.frame(read_csv("January/Project_Management_End_of_Month_January_2018_Data.txt"))

View(Project.Management.End.of.Month.January.2018.Data.df)
Project.Names.List<-Project.Management.End.of.Month.January.2018.Data.df$ProjectName
Project.Names.List.N<-length(Project.Names.List)

#------------------2019-----------------------
Project.Management.End.of.Month.January.2018.Data.df <- as.data.frame(read_csv("January/Project_Management_End_of_Month_January_2019_Data.txt"))
Project.Management.End.of.Month.February.2019.Data.df <- as.data.frame(read_csv("February/Project_Management_End_of_Month_February_2019_Data.txt"))


#-------------------------------Analysis---------------------------------------------------------------------------------------------------

Project.Management.End.of.Month.January.2018.Data.Group.1.df<-subset(Project.Management.End.of.Month.January.2018.Data.df,
                                                                      Project.Management.End.of.Month.January.2018.Data.df$LectureID==1)
Project.Management.End.of.Month.January.2018.Data.Group.2.df<-subset(Project.Management.End.of.Month.January.2018.Data.df,
                                                                      Project.Management.End.of.Month.January.2018.Data.df$LectureID==2)
Project.Management.End.of.Month.January.2018.Data.Group.3.df<-subset(Project.Management.End.of.Month.January.2018.Data.df,
                                                                      Project.Management.End.of.Month.January.2018.Data.df$LectureID==3)
Project.Management.End.of.Month.January.2018.Data.Group.4.df<-subset(Project.Management.End.of.Month.January.2018.Data.df,
                                                                     Project.Management.End.of.Month.January.2018.Data.df$LectureID==4)

Project.Totals.All.Groups<-sum(Project.Management.End.of.Month.January.2018.Data.df$Total)

Project.Totals.All.Groups.1<-sum(Project.Management.End.of.Month.January.2018.Data.Group.1.df$Total)
Project.Totals.All.Groups.2<-sum(Project.Management.End.of.Month.January.2018.Data.Group.2.df$Total)
Project.Totals.All.Groups.3<-sum(Project.Management.End.of.Month.January.2018.Data.Group.3.df$Total)
Project.Totals.All.Groups.4<-sum(Project.Management.End.of.Month.January.2018.Data.Group.4.df$Total)

Table.Project.Totals.df<-data.frame()
Table.Project.Totals.df<-cbind(Project.Totals.All.Groups.1,
                               Project.Totals.All.Groups.2,
                               Project.Totals.All.Groups.3,
                               Project.Totals.All.Groups.4,
                               Project.Totals.All.Groups)
colnames(Table.Project.Totals.df)<-c("Group 1","Group 2","Group 3","Group 4","Total")

#-------------------------------Tables---------------------------------------

Table.1<-xtable(Table.Project.Totals.df)

#-----------------------------Figures----------------------------------------

Figure.1<-plot(Project.Management.End.of.Month.January.2018.Data.df$Total)

par(mfrow = c(2,2), mar = c(2,2,2,2))
Figure.2<-hist(Project.Management.End.of.Month.January.2018.Data.Group.1.df$Total)
Figure.3<-hist(Project.Management.End.of.Month.January.2018.Data.Group.2.df$Total)
Figure.4<-hist(Project.Management.End.of.Month.January.2018.Data.Group.3.df$Total)
Figure.5<-hist(Project.Management.End.of.Month.January.2018.Data.Group.4.df$Total)

#-----------------------------References---------------------------------------





