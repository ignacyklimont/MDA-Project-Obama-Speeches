library(readxl)
library(fpp2)
library(portes)
library(forecast)
library(urca)
install.packages('readxl')

install.packages("xlsx")
library("readxl")
library("xlsx")
getwd()
# setwd("C:/Users/Theresa/Documents/Studium KUL/Predictive Business Analytics/DataSets2021.xlsx") # Specify you own working directory here.
# setwd("C:/Users/Theresa/Documents/Studium_KUL/Semester_2/Modern Data Analytics/Project/merged_df3.csv")
data <- read_excel("merged_df3.xlsx")
data
dates <- ts(data[,1])
dates
gdp <- ts(data[, 2])


homeprices <- ts(data[,3])
price <- ts(data[,4])
unrate <-  ts(data[,5])



plot(gdp)
plot(homeprices)
plot(price)
plot(unrate)

# detrending

plot(diff(gdp))
diff.gdp = diff(gdp)
plot(diff.gdp)

plot(diff(homeprices))
diff.homeprices = diff(homeprices)
plot(diff.homeprices)

plot(diff(price))
diff.price = diff(price)
plot(diff.price)

plot(diff(unrate))
diff.unrate= diff(unrate)
plot(diff.unrate)

# Investigate Seasonality
# check for first order differences
ndiffs(diff.gdp) # 0
ndiffs(diff.homeprices) # 0
ndiffs(diff.price) # 0
ndiffs(diff.unrate) # 1 first difference 
diff.unrate = diff(diff.unrate)  # taking difference of difference
diff.unrate
plot(diff.unrate)
ndiffs(diff.unrate)

plot(diff.gdp)
plot(diff.homeprices)
plot(diff.price)
plot(diff.unrate)

# Export

directory <-getwd()
x
x <-cbind(x, diff.gdp)
x <- cbind(x, diff.homeprices) ## x['prices'] <-c(price)
x<- cbind(x,diff.price)
x <- cbind(x,unrate)
x
write.csv(x_new, "export.csv")

