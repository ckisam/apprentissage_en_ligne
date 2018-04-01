library(R.matlab)
rm(list = ls())
setwd("C:/Users/Samuel/Documents/ENSAE - Online/apprentissage_en_ligne")
matlabFile  <- readMat('data.mat')

data <- as.data.frame(t(matlabFile$A))
columns <-
  do.call(c, lapply(matlabFile$B, function(x) {
    col <- x[[1]][1, 1]
    return(substr(col, 0, nchar(col) - 4))
  }))
colnames(data) <- columns
write.csv(data, "data.csv", row.names = FALSE)

### --- OLD ---
varNames    <- names(matlabFile$A[,,1])
datList     <- matlabFile$A
datList     <- lapply(datList, unlist, use.names=FALSE)
data        <- as.data.frame(datList)
names(data) <- varNames
