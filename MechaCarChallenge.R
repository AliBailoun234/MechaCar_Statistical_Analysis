library(ggplot2)
library("magrittr")
library(dplyr)
library(tidyr)
library(readr)

MechaCar <- read.csv("R_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv",check.names = F, stringsAsFactors = F) #import MechaCar csv

MechaLM <- lm(MechaCar, data = MechaCar) #create linear model
summary(MechaLM)

suspension_table <- read.csv("R_Analysis/MechaCar_Statistical_Analysis/Suspension_Coil.csv", check.names = F, stringsAsFactors = F) #import Suspension Coil Dataset
total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI= var(PSI),SD_PSI= sd(PSI)) #create summary table
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI= var(PSI),SD_PSI= sd(PSI)) #create summary table based on Manufacturing lot
