library(tidyverse)
url <- "http://mlr.cs.umass.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"

read_lines(url, n_max = 3)
data_wdbc <- read_csv(url, col_names = FALSE)
head(data_wdbc)
class(data_wdbc)
str(data_wdbc)