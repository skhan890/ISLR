########################
### February 21 2016 ###
### Chapter 2 ISLR   ###
##################################################################################################
#Data Cleaning
##################################################################################################
library(ISLR)
library(MASS)
                                            # Setting the datasets 
setwd("~//ISLR/")
                                            # Grabbing all the names in my "Dataset" folder
                                            # (Datasets were saved from the ISLR)

fileNames <- list.files("Datasets", pattern="*.csv", full.names=T)

                                            # Setting a list called "ds" (datasets) that has all 8 datasets. 
                                            # To pull each dataset, do ds$Advertising, etc
ds <- lapply(fileNames, read.csv)                                # reading all files
names(ds) <- gsub(".*Datasets/\\s*|.csv.*", "", fileNames)       # setting names of the list

###################################################################################################
head(ds$Advertising)
str(ds$Advertising)
###################################################################################################

### Chapter 2.3 Lab

(seq(1,12))

#### Generating random data
x=runif(50)
y=rnorm(50)
x
y
plot(x,y,xlab="Random Uniform",ylab="Random Normal", col="blue",pch="*")
hist(y)

names(ds$Auto)

summary(ds$Auto)
plot(ds$Auto$cylinders,ds$Auto$mpg)

attach(ds$Auto)

plot(cylinders,mpg)
.search()

