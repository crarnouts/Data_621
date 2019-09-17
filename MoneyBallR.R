library(tidyverse)

df_train <- read.csv("https://raw.githubusercontent.com/crarnouts/Data_621/master/moneyball-training-data.csv")

df_test <- read.csv("https://raw.githubusercontent.com/crarnouts/Data_621/master/moneyball-evaluation-data.csv")


source("https://raw.githubusercontent.com/crarnouts/Data_605_Final/master/RandomForestNulls_testing.R")


df_test <- RF_with_Nulls(df_train,df_test,"TARGET_WINS",.5,16,5,.01,25,1)