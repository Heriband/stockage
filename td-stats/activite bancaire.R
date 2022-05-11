#read.table read.csv read.csv2
#fct utiles
#as.numeric
#Format
#as.date
#library(dplyr)
#merge


clients <- read.table(file = file.choose(), header = T, sep = ";", quote = "")

clients$an_naissance <- as.numeric(format(as.Date(clients$Date.naissance, format = "%d/%m/%Y"), "%Y"))

cp_client <- data.frame(cp = )
