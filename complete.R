thresholdcheck <- function(directory,  id) {
  fileName <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")
  filePath <- paste(directory, "/", fileName, sep = "")
  frame <- read.csv(filePath)
}

complete <- function(directory, id=1:332 ) {
  a <- numeric(0)
  for (cid in id) {
  Lists <-  thresholdcheck(directory, cid)
  a <- c(a, nrow(na.omit(Lists)))
  }
  data.frame(id = id, nobs = a)
}

complete