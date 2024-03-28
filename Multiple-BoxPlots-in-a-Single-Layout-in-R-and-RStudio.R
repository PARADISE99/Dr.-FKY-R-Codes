#################################################################
#################################################################
#################################################################
library(ggplot2)
library(cowplot)
### Pathe ###
setwd("E:/Analysis_For_Papers_30-04-2022/JHydRS_Data_Response_Reviewer/R-02/Uncertainity/Uncertainty_Box-Plots")
##############################
A1<-read.csv("R95p_Boxplot_R-02.csv", sep=",")
head(A1)


p=ggplot(A1, aes(x=R95p, y=r95p, fill=Data)) + 
  geom_boxplot()+
  ylab("Precipitation (mm/day)")
p1=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p1=p + theme(legend.position = "none")

##############################

A2<-read.csv("CDD_Boxplot_R-02.csv", sep=",")
head(A2)



p=ggplot(A2, aes(x=CDD, y=cdd, fill=Data)) + 
  geom_boxplot()+
  ylab("Number of days")
p2=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p2=p + theme(legend.position = "none")

##############################

A3<-read.csv("SU25_Boxplot_R-02.csv", sep=",")
head(A3)



p=ggplot(A3, aes(x=SU25, y=su25, fill=Data)) + 
  geom_boxplot()+
  ylab("Number of days")
p3=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p3=p + theme(legend.position = "none")

##############################

A4<-read.csv("TX90p_Boxplot_R-02.csv", sep=",")
head(A4)



p=ggplot(A4, aes(x=TX90p, y=tx90p, fill=Data)) + 
  geom_boxplot()+
  ylab("Number of days")
p4=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p4=p + theme(legend.position = "none")

##############################

A6<-read.csv("R99p_Boxplot_R-02.csv", sep=",")
head(A6)



p=ggplot(A6, aes(x=R99p, y=r99p, fill=Data)) + 
  geom_boxplot()+
  ylab("Precipitation (mm/day)")
p5=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p5=p + theme(legend.position = "none")

##############################

A6<-read.csv("TN90p_Boxplot_R-02.csv", sep=",")
head(A6)



p=ggplot(A6, aes(x=TN90p, y=tn90p, fill=Data)) + 
  geom_boxplot()+
  ylab("Number of days")
p6=p + theme(
  axis.text.x = element_blank()) # Keep the x-axis blank
#p6=p + theme(legend.position = "none")

##############################

plot_grid(p1, p2, p3, p4, p5, p6, labels = "AUTO")



###########################################################################################
###########################################################################################
###########################################################################################
