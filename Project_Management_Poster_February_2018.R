#-------------------------------To Be Updated with Examples in the Classroom----------------------------------------------------------
library(xtable);library(stringr);library(stringi);library(readr);library(readxl);library(igraph);library(visNetwork)
#--------------------------------Data------------------------------------------------------------------------------------------------------
poster.blocks.categories<-c("PosterBlockID",
  "PosterID",
  "PosterBlockDescription",
  "PosterBlockType",
  "FileLocation", 
  "Description", 
  "Comment", 
  "Rating",
  "Column1",
  "Column2",
  "Column3")

poster.blocks.df<-data.frame()
poster.blocks.df<-rbind(c(94,1,"Vision Statement",1, "2018\\Poster\\Template\\vision.tex","","",10,"","",""),
      c(95,1,"Summary",1, "2018\\Poster\\Template\\summary.tex","","",10,"","",""),
      c(96,1,"Recent_Work_Experience",1, "2018\\Poster\\Template\\Recent_Work.tex","","",10,"","",""),
      c(961,1,"Company_Information_1",1, "2018\\Poster\\Template\\Company_1.tex","","",10,"","",""),
      c(962,1,"Company_Information_2",1, "2018\\Poster\\Template\\Company_2.tex","","",10,"","",""),
      c(963,1,"Company_Information_3",1, "2018\\Poster\\Template\\Company_3.tex","","",10,"","",""),
      c(964,1,"Company_Information_4",1, "2018\\Poster\\Template\\Company_4.tex","","",10,"","",""),
      c(97,1,"Education",1, "2018\\Poster\\Template\\Education.tex","","",10,"","",""),
      c(971,1,"Formal_Education_1",1, "2018\\Poster\\Template\\Formal_Education_1.tex","","",10,"","",""),
      c(972,1,"Formal_Education_2",1, "2018\\Poster\\Template\\Formal_Education_2.tex","","",10,"","",""),
      c(973,1,"Formal_Education_3",1, "2018\\Poster\\Template\\Formal_Education_3.tex","","",10,"","",""),
      c(974,1,"Informal_Education_1",1, "2018\\Poster\\Template\\InFormal_Education_1.tex","","",10,"","",""),
      c(975,1,"Highlights_Formal_Education",1, "2018\\Poster\\Template\\Formal_Education_Highlights.tex","","",10,"","",""),
      c(98,1,"Scholarly_Activities",1, "2018\\Poster\\Template\\Scholarly_Activities.tex","","",10,"","",""),
      c(981,1,"Publications",1, "2018\\Poster\\Template\\Publications.tex","","",10,"","",""),
      c(982,1,"Software_Applications_Code",1, "2018\\Poster\\Template\\Software_Applications_Code.tex","","",10,"","",""),
      c(983,1,"Academic_Awards",1, "2018\\Poster\\Template\\Academic_Awards.tex","","",10,"","",""),
      c(984,1,"Projects",1, "2018\\Poster\\Template\\Projects.tex","","",10,"","",""),
      c(985,1,"R Projects",1, "2018\\Poster\\Template\\R_Projects.tex","","",10,"","",""),
      c(99,1, "Volunteer_Experience",1, "2018\\Poster\\Template\\Volunteer_Experience.tex","","",10,"","","")
)
colnames(poster.blocks.df)<-poster.blocks.categories

write.csv(poster.blocks.df,file="Resume_Poster_February_2018")
write.csv(poster.blocks.df,file="Resume_Poster_January_2019")
write.csv(poster.blocks.df,file="Resume_Poster_February_2019")

Resume.Poster.February.2018 <- as.data.frame(read_csv("Resume_Poster_February_2018"))
Resume.Poster.January.2019 <- as.data.frame(read_csv("Resume_Poster_January_2019"))
Resume.Poster.February.2019 <- as.data.frame(read_csv("Resume_Poster_February_2019"))

View(Resume.Poster.February.2018)

#-----------------------------Tables-----------------------------------------------------------------------------------------------------
Table.1<-NULL
#-----------------------------Figures----------------------------------------------------------------------------------------------------
Figure.1<-NULL
#-----------------------------References-------------------------------------------------------------------------------------------------
references<-stringr::str_c("","","")

#-----------------------------Function Library-------------------------------------------------------------------------------------------

f.1<-function(X)
{

  output<-list()
  output$X<-X
  return(output)
}

test.f.1<-f.1(LETTERS)
test.f.1

