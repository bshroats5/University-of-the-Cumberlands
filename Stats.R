# import the libaries
library(tidyverse)
library(ggplot2)
install.packages("conflicted")
library(conflicted)
library(readxl)
install.packages("writexl")
library(writexl)

# import data from excel data_5_18_2024
data <- read_excel("Data_5-18-2024.xlsx")

# view the data
head(data)

# view the data
str(data)

# view the column names
colnames(data)

# change column instnm name
colnames(data)[colnames(data) == 'instnm'] <- 'School'

# view the column names
colnames(data)

# overwrite the excel file with new data
write.csv(data, "Data_5-18-2024.csv")
