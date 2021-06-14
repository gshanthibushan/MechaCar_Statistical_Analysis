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


#Deliverable 3: T-Tests on Suspension Coils
#RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(SuspensionCoil$PSI,mu=1500)

#RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(SuspensionCoil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


