library(xtable)
library(stringr)
library(stringi)
library(readr)
library(readxl)
library(igraph)
library(visNetwork)
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
poster.blocks.df<-rbind(c(101,1,"Lecture_1",1, "2018\\Poster\\1\\Lecture_1.tex","","",10,"","",""),
                        c(102,1,"Lecture_2",1, "2018\\Poster\\1\\Lecture_2.tex","","",10,"","",""),
                        c(103,1,"Lecture_3",1, "2018\\Poster\\1\\Lecture_3.tex","","",10,"","",""),
                        c(104,1,"Lecture_4",1, "2018\\Poster\\1\\Lecture_4.tex","","",10,"","",""),
                        c(105,1,"Lecture_5",1, "2018\\Poster\\1\\Lecture_5.tex","","",10,"","",""),
                        c(106,1,"Lecture_6",1, "2018\\Poster\\1\\Lecture_6.tex","","",10,"","",""),
                        c(107,1,"Lecture_7",1, "2018\\Poster\\1\\Lecture_7.tex","","",10,"","",""),
                        c(108,1,"Lecture_8",1, "2018\\Poster\\1\\Lecture_8.tex","","",10,"","",""),
                        c(109,1,"Lecture_9",1, "2018\\Poster\\1\\Lecture_9.tex","","",10,"","",""),
                        c(110,1,"Lecture_10",1, "2018\\Poster\\1\\Lecture_10.tex","","",10,"","",""),
                        c(111,1,"Lecture_11",1, "2018\\Poster\\Template\\Lecture_11.tex","","",10,"","",""),
                        c(112,1,"Lecture_12",1, "2018\\Poster\\Template\\Lecture_12.tex","","",10,"","",""),
                        c(113,1,"Lecture_13",1, "2018\\Poster\\Template\\Lecture_13.tex","","",10,"","",""),
                        c(114,1,"Lecture_14",1, "2018\\Poster\\Template\\Lecture_14.tex","","",10,"","",""),
                        c(115,1,"Lecture_15",1, "2018\\Poster\\Template\\Lecture_15.tex","","",10,"","",""),
                        c(116,1,"Lecture_16",1, "2018\\Poster\\Template\\Lecture_16.tex","","",10,"","",""),
                        c(117,1,"Lecture_17",1, "2018\\Poster\\Template\\Lecture_17.tex","","",10,"","",""),
                        c(118,1,"Lecture_18",1, "2018\\Poster\\Template\\Lecture_18.tex","","",10,"","",""),
                        c(119,1,"Lecture_19",1, "2018\\Poster\\Template\\Lecture_19.tex","","",10,"","",""),
                        c(120,1,"Lecture_20",1, "2018\\Poster\\Template\\Lecture_20.tex","","",10,"","",""),
                        c(121,1,"Lecture_21",1, "2018\\Poster\\Template\\Lecture_21.tex","","",10,"","",""),
                        c(122,1,"Lecture_22",1, "2018\\Poster\\Template\\Lecture_22.tex","","",10,"","",""),
                        c(123,1,"Lecture_23",1, "2018\\Poster\\Template\\Lecture_23.tex","","",10,"","",""),
                        c(124,1,"Lecture_24",1, "2018\\Poster\\Template\\Lecture_24.tex","","",10,"","",""),
                        c(125,1,"Lecture_25",1, "2018\\Poster\\Template\\Lecture_25.tex","","",10,"","",""),
                        c(126,1,"Lecture_26",1, "2018\\Poster\\Template\\Lecture_26.tex","","",10,"","",""),
                        c(127,1,"Lecture_27",1, "2018\\Poster\\Template\\Lecture_27.tex","","",10,"","",""),
                        c(128,1,"Lecture_28",1, "2018\\Poster\\Template\\Lecture_28.tex","","",10,"","",""),
                        c(129,1,"Lecture_29",1, "2018\\Poster\\Template\\Lecture_29.tex","","",10,"","",""),
                        c(130,1,"Lecture_30",1, "2018\\Poster\\Template\\Lecture_30.tex","","",10,"","",""),
                        c(131,1,"Lecture_31",1, "2018\\Poster\\Template\\Lecture_31.tex","","",10,"","",""),
                        c(132,1,"Lecture_32",1, "2018\\Poster\\Template\\Lecture_32.tex","","",10,"","","")
)

colnames(poster.blocks.df)<-poster.blocks.categories
write.csv(poster.blocks.df,file="Math_Biology_Poster_1_Lectures_February_2018")

Math.Biology.Poster.1.Lectures.February.2018 <- as.data.frame(read_csv("Math_Biology_Poster_1_Lectures_February_2018"))
View(Math.Biology.Poster.1.Lectures.February.2018)

#-----------------------------Tables-----------------------------------------------------------------------------------------------------

#-----------------------------Figures----------------------------------------------------------------------------------------------------

#-----------------------------References-------------------------------------------------------------------------------------------------

#-----------------------------Function Library-------------------------------------------------------------------------------------------