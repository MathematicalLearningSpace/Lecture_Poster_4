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
poster.blocks.df<-rbind(c(1,1,"Introduction",1, "2018\\Poster\\Template\\introduction.tex","","",10,"","",""),
                        c(2,1,"Abstract",1, "2018\\Poster\\Template\\abstract.tex","","",10,"","",""),
                        c(21,1,"Abstract_Sentence_1",1, "2018\\Poster\\Template\\abstract_sentence_1.tex","","",10,"","",""),
                        c(31,1,"Objectives",1, "2018\\Poster\\Template\\objectives.tex","","",10,"","",""),
                        c(311,1,"Objectives_1",1, "2018\\Poster\\1\\objectives_1.tex","","",10,"","",""),
                        c(312,1,"Objectives_2",1, "2018\\Poster\\1\\objectives_2.tex","","",10,"","",""),
                        c(313,1,"Objectives_3",1, "2018\\Poster\\1\\objectives_3.tex","","",10,"","",""),
                        c(4,1,"Keywords",1, "2018\\Poster\\1\\keywords.tex","","",10,"","",""),
                        c(5,1,"Research_Hypothesis",1, "2018\\Poster\\1\\research_hypothesis.tex","","",10,"","",""),
                        c(6,1,"Introduction_1",1, "2018\\Poster\\1\\introduction.tex","","",10,"","",""),
                        c(7,1,"Summary_1",1, "2018\\Poster\\Template\\summary_1.tex","","",10,"","",""),
                        c(21,1,"Gene_Background",1, "2018\\Poster\\1\\Gene_Background.tex","","",10,"","",""),
                        c(211,1,"Gene_Background_1",1, "2018\\Poster\\Template\\Gene_Background_1.tex","","",10,"","",""),
                        c(212,1,"Gene_Background_2",1, "2018\\Poster\\Template\\Gene_Background_2.tex","","",10,"","",""),
                        c(22,1,"Gene_Network",1, "2018\\Poster\\1\\Gene_Network.tex","","",10,"","",""),
                        c(221,1,"Gene_Network_1",1, "2018\\Poster\\Template\\Gene_Network_1.tex","","",10,"","",""),
                        c(222,1,"Gene_Network_2",1, "2018\\Poster\\Template\\Gene_Network_2.tex","","",10,"","",""),
                        c(25,1,"KEGG_Pathway",1, "2018\\Poster\\1\\KEGG_Pathway.tex","","",10,"","",""),
                        c(251,1,"KEGG_Pathway_1",1, "2018\\Poster\\Template\\KEGG_Pathway_1.tex","","",10,"","",""),
                        c(27,1,"Signaling_Network_1",1, "2018\\Poster\\1\\Signaling_Network_1.tex","","",10,"","",""),
                        c(271,1,"Signaling_Network_2",1, "2018\\Poster\\Template\\Signaling_Network_2.tex","","",10,"","",""),
                        c(272,1,"Signaling_Network_3",1, "2018\\Poster\\Template\\Signaling_Network_3.tex","","",10,"","",""),
                        c(311,1,"Definition_1",1, "2018\\Poster\\Template\\Definition_1.tex","","",10,"","",""),
                        c(312,1,"Definition_2",1, "2018\\Poster\\Template\\Definition_2.tex","","",10,"","",""),
                        c(313,1,"Definition_3",1, "2018\\Poster\\Template\\Definition_3.tex","","",10,"","",""),
                        c(341,1,"Theorem_1",1, "2018\\Poster\\Template\\Theorem_1.tex","","",10,"","",""),
                        c(342,1,"Theorem_2",1, "2018\\Poster\\Template\\Theorem_2.tex","","",10,"","",""),
                        c(343,1,"Theorem_3",1, "2018\\Poster\\Template\\Theorem_3.tex","","",10,"","",""),
                        c(371,1,"Math_Background_1",1, "2018\\Poster\\1\\Math_Background_1.tex","","",10,"","",""),
                        c(372,1,"Math_Background_2",1, "2018\\Poster\\Template\\Math_Background_2.tex","","",10,"","",""),
                        c(373,1,"Math_Background_3",1, "2018\\Poster\\Template\\Math_Background_3.tex","","",10,"","",""),
                        c(411,1,"Model_Specification_1",1, "2018\\Poster\\1\\Model_Specification_1.tex","","",10,"","",""),
                        c(412,1,"Model_Specification_2",1, "2018\\Poster\\Template\\Model_Specification_2.tex","","",10,"","",""),
                        c(413,1,"Model_Speciffication_3",1, "2018\\Poster\\Template\\Model_Specification_3.tex","","",10,"","",""),
                        c(51,1,"Lecture_Algorithm_1",1, "2018\\Poster\\1\\Lecture_Algorithm_1.tex","","",10,"","",""),
                        c(52,1,"Algorithm_1",1, "2018\\Poster\\1\\Algorithm_1.tex","","",10,"","",""),
                        c(53,1,"Algorithm_2",1, "2018\\Poster\\Template\\Algorithm_2.tex","","",10,"","",""),
                        c(611,1,"Descriptive_Statistics_1",1, "2018\\Poster\\1\\Descriptive_Statistics_1.tex","","",10,"","",""),
                        c(612,1,"Descriptive_Statistics_2",1, "2018\\Poster\\Template\\Descriptive_Statistics_2.tex","","",10,"","",""),
                        c(631,1,"Preliminary_Empirical_Results_1",1, "2018\\Poster\\1\\Preliminary_Empirical_Results_1.tex","","",10,"","",""),
                        c(632,1,"Preliminary_Empirical_Results_2",1, "2018\\Poster\\Template\\Preliminary_Empirical_Results_2.tex","","",10,"","",""),
                        c(633,1,"Preliminary_Empirical_Results_3",1, "2018\\Poster\\Template\\Preliminary_Empirical_Results_3.tex","","",10,"","",""),
                        c(634,1,"Preliminary_Empirical_Results_4",1, "2018\\Poster\\Template\\Preliminary_Empirical_Results_4.tex","","",10,"","",""),
                        c(711,1,"Conclusion_1",1, "2018\\Poster\\1\\Conclusion_1.tex","","",10,"","",""),
                        c(712,1,"Conclusion_2",1, "2018\\Poster\\Template\\Conclusion_2.tex","","",10,"","",""),
                        c(811,1,"Recommendations_1",1, "2018\\Poster\\1\\Recommendations_1.tex","","",10,"","",""),
                        c(812,1,"Recommendations_2",1, "2018\\Poster\\Template\\Recommendations_2.tex","","",10,"","",""),
                        c(82,1,"References",1, "2018\\Poster\\1\\References.tex","","",10,"","",""),
                        c(91,1,"Additional_Information_1",1, "2018\\Poster\\Template\\Additional_Information_1.tex","","",10,"","",""),
                        c(921,1,"Linkout_1",1, "2018\\Poster\\Template\\Linkout_1.tex","","",10,"","",""),
                        c(931,1,"Contact_Information_1",1, "2018\\Poster\\1\\Contact_Information.tex","","",10,"","","")
)

colnames(poster.blocks.df)<-poster.blocks.categories
write.csv(poster.blocks.df,file="Math_Biology_Poster_1_February_2018")

Math.Biology.Poster.1.February.2018 <- as.data.frame(read_csv("Math_Biology_Poster_1_February_2018"))
View(Math.Biology.Poster.1.February.2018)

#-----------------------------Tables-----------------------------------------------------------------------------------------------------

#-----------------------------Figures----------------------------------------------------------------------------------------------------

#-----------------------------References-------------------------------------------------------------------------------------------------

#-----------------------------Function Library-------------------------------------------------------------------------------------------