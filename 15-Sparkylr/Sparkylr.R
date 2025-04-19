
library(sparklyr)
sc <- spark_connect(master = "local", version = "2.4")
data(iris)
s_iris <- copy_to(sc, iris, overwrite = TRUE)
spark_web(sc)

rm(iris)
library(DBI)
dbGetQuery(sc, "SELECT count(*) FROM iris")

library(dplyr)
count(s_iris)

xiris <- select(s_iris, Sepal_Length, Sepal_Width, 
                Petal_Length, Petal_Width, Species)  %>% 
  sample_n(150) %>% group_by(Species) %>% 
  summarize(Sepal_Length = mean(Sepal_Length), 
            Sepal_Width = mean(Sepal_Width), 
            Petal_Length = mean(Petal_Length), 
            Petal_Width = mean(Petal_Width)) %>%
  collect() 


xiris <- select(s_iris, Sepal_Length, Sepal_Width, 
                Petal_Length, Petal_Width)  %>%
  sample_n(150) %>% group_by(Species) %>%
  collect() 

library(fpc)
clu <- kmeans(x = xiris, centers = 3)
print(clu$centers)
plotcluster(xiris, clu$cluster)


s_clu <- ml_kmeans(s_iris, Species ~ ., k=3)
print(s_clu)
prediction = collect(ml_predict(s_clu, s_iris))
plotcluster(xiris, prediction$prediction)


f <- function(data) {
  data$id <- 1:nrow(data)
  data$max <- apply(data,1,max)
  data$min <- apply(data,1,min)
  return (data)
}

z <- s_iris %>% select(Sepal_Length, Sepal_Width, 
                       Petal_Length, Petal_Width) %>% 
  spark_apply(f) %>% collect



