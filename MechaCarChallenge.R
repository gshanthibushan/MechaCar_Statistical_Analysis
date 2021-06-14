# Deliverable 1: Linear Regression to Predict MPG

install.packages("tidyverse")
library(tidyverse)

install.packages("jsonlite")
library (jsonlite)

install.packages("pastecs")
library(pastecs)

install.packages("dplyr")
library(dplyr)

install.packages("gtsummary")
library(gtsummary)

#Import and read
MechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=T, stringsAsFactors = F)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#Perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))


# Deliverable 2: Create Visualizations for the Trip Analysis 
#Import and read
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep') 
total_summary

#Write an RScript that creates a lot_summary dataframe
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                              Median=median(PSI),
                                              Variance=var(PSI),
                                              SD=sd(PSI), .groups = 'keep') 
lot_summary
