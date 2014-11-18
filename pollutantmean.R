setwd("~/Documents/Coursera/R/Data")

pollutants <- function(directory, pollutant, id) {
  fname <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")
  fpath <- paste(directory, "/", fname, sep = "")
  frame <- read.csv(fpath)
  finallist <- frame[[pollutant]] 
  finallistwithoutna <- na.omit(finallist)
}

pollutantmean <- function(directory, pollutant, id =1:332 ) {
  x <- sapply(id, function(id) pollutants(directory, pollutant, id))
  y <- unlist(x)
  mean(y)
}


pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)