library(datasets)
library(fpc)

func <- function(k, file) {
  data(iris)

  clu <- kmeans(x = iris[,1:4], centers = k)
  
  png(file, width = 350, height = 350)
  plotcluster(iris[,1:4], clu$cluster)
  dev.off()
  
  return(list(betweenss=clu$betweenss))
}

