library(ggplot2)
library("magrittr")
library(dplyr)
library(tidyr)
library(readr)

MechaCar <- read.csv("R_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv",check.names = F, stringsAsFactors = F) #import MechaCar csv

MechaLM <- lm(MechaCar, data = MechaCar) #create linear model
summary(MechaLM)