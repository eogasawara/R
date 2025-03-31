
``` r
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
```


``` r
d <- data.frame(weight=weight, height=height, subject=subject)
head(d)
```

```
##   weight height subject
## 1     60   1.75       A
## 2     72   1.80       B
## 3     57   1.65       C
## 4     90   1.90       D
## 5     95   1.74       E
## 6     72   1.91       F
```


``` r
lapply(d[,1:2], mean, na.rm=TRUE)
```

```
## $weight
## [1] 74.33333
## 
## $height
## [1] 1.791667
```


``` r
sapply(d[,1:2], mean, na.rm=TRUE)
```

```
##    weight    height 
## 74.333333  1.791667
```


``` r
m <- as.matrix(d[,1:2])
```


``` r
apply(m, 1, min, na.rm=TRUE)
```

```
## [1] 1.75 1.80 1.65 1.90 1.74 1.91
```


``` r
apply(m, 2, min, na.rm=TRUE)
```

```
## weight height 
##  57.00   1.65
```

