# Deliverable 1: Linear Regression to Predict MPG

install.packages("tidyverse")
library(tidyverse)

install.packages("jsonlite")
library (jsonlite)

install.packages("pastecs")
library(pastecs)

install.packages("dplyr")
library(dplyr)

#Import and read
MechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=T, stringsAsFactors = F)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#Perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

