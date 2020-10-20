install.packages("devtools")
install.packages("ggplot2")
library(devtools)
library(ggplot2)
install.packages("readxl")
library(readxl)
library(reshape2)
library(stringr)

my_data <- read.csv("C:\\Users\\Cem Deniz\\Downloads\\2020-XTernDS.csv")  #loads the given dataset into R
colnames(my_data)   #displays the column names


cooktime <- my_data[,10]   #assigns the 10th column to cooktime variable
cooktime

mean(as.numeric(stringr::str_extract(cooktime, "\\d{2}")))       #finds the mean of string extracted portion from cooktime variable which has been turned into numerics


ggplot(data = my_data, aes(x = Rating, y = Votes))+              #plots the Rating vs Votes and displays the Restaurant IDs on the graph
  geom_point() + geom_label(label = my_data$ï..Restaurant)

ggplot(data = my_data, aes(x = Rating, y = cooktime))+            #plots the Rating vs Cooktime and displays the Restaurant IDs on the graph
  geom_point() + geom_label(label = my_data$ï..Restaurant)

ggplot(data = my_data, aes(x = Rating, y = Average_Cost))+      #plots the Rating vs AverageCost and displays the Restaurant IDs on the graph
  geom_point() + geom_label(label = my_data$ï..Restaurant)
                                                                    