corr <- function(directory, threshold = 0) {
  filelist <- complete(directory)
  fl <- filelist[filelist$nobs > threshold,]
  a <- numeric()
  for(i in fl$id){
    fileStr <- paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = "")
    x <- read.csv(fileStr)
    a <- append(a, cor(x$sulfate, x$nitrate, use="na.or.complete"))
  }
  a
}

