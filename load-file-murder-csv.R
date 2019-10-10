library(dslabs)
library(tidyverse) # includes read
library(readxl)   # provide functions to read Microsoft excel formatted files.


# inspect the first 3 lines
read_lines("data/fertility-two-countries-example.csv", n_max = 3)
read_lines("data/murders.csv", n_max = 3)
read_lines("data/life-expectancy-and-fertility-two-countries-example.csv", n_max = 3)
# read file in CSV format
dat <- read_csv("data/murders.csv")
dat1 <- read_csv("data/fertility-two-countries-example.csv")
dat2 <- read_csv("data/life-expectancy-and-fertility-two-countries-example.csv")
#read using full path
dat <- read_csv("data/murders.csv")
# o primeiro argumento de read_csv é o mais importante; é o caminho para o arquivo ser
# lido

dat1 <- read_csv("data/fertility-two-countries-example.csv")
dat2 <- read_csv("data/life-expectancy-and-fertility-two-countries-example.csv")
dat <- read.csv("data/murders.csv")
head(dat)
class(dat)
head(dat1)
head(dat2)
class(dat$abb)
class(dat$region)

url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dat <- read_csv(url)
download.file(url, "murders.csv")
tempfile()
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)

# read_csv lê arquivo em linha

read_csv("a, b, c
         1, 2, 3, 
         4, 5, 6")

read_csv("The first line of metadata
         The second line of metadata
         x, y, z
         1, 2, 3", skip = 2)

read_csv("# A comment I want to skip
         x, y, z
         1, 2, 3", comment = "#")

read_csv("1,2,3\n4, 5, 6", col_names = FALSE)

read_csv("a, b, c\n1,2,.",na = ".")
