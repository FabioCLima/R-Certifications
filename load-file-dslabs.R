# see working directory
getwd()

library(dslabs)

# set path to the location for raw data files in the dslabs package and list files

path <- system.file("extdata", package = "dslabs")
list.files(path) 

# generate a full path to a file

filename <- "murders.csv"
filename1 <- "life-expectancy-and-fertility-two-countries-example.csv"
filename2 <- "fertility-two-countries-example.csv"
fullpath <- file.path(path, filename)
fullpath1 <- file.path(path, filename1)
fullpath2 <- file.path(path, filename2)

#copy file from dslabs package to your working directory
file.copy(fullpath, getwd())
file.copy(fullpath1, getwd())
file.copy(file.path(path, "murders.csv"), file.path(getwd(), setwd("data")))
file.copy(fullpath2, getwd())
#check if the file exists
file.exists(filename)
file.exists(filename1)
file.exists(filename2)

getwd()

url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dat <- read_csv(url)
download.file(url, "murders.csv")
