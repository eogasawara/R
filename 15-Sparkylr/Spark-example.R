library(dplyr)
library(sparklyr)

w_map <- function(data) {
  dataset <- NULL
  source("/rukbat/eogasawara/mycluster.R")
  
  for (i in 1:nrow(data)) {
    msg <- NULL
    model <- NULL

    k <- data$k[i]
    file=sprintf("%s/%d.png", data$dir[i], data$id[i])
    
    tryCatch(model <- func(k, file), error = function(e) {msg <<- e})

    betweenss <- 0
    if (!is.null(model)) {
      betweenss <- model$betweenss
    }
    log <- ""
    if (!is.null(msg))
      log <- msg$message
    
    tuple <- data.frame(k = k, betweenss=betweenss, log=log)
    dataset <- rbind(dataset, tuple)
  }
  
  return(dataset)
}

Sys.setenv("SPARK_HOME" = "/usr/local/spark")
sc <- spark_connect(master = "spark://rukbat:7077")

data <- data.frame(k=1:150)
data$dir <- "/rukbat/eogasawara/test"
data$id <- 1:nrow(data)

data_out <- copy_to(sc, data, overwrite = TRUE) %>% 
  spark_apply(w_map, group_by="id") %>% collect

spark_disconnect(sc)
