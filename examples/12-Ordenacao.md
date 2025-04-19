
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
sort(d$height)
```

```
## [1] 1.65 1.74 1.75 1.80 1.90 1.91
```


``` r
order(d$height)
```

```
## [1] 3 5 1 2 4 6
```


``` r
o <- order(d$height)
ds <- d[o,]
head(ds)
```

```
##   weight height subject
## 3     57   1.65       C
## 5     95   1.74       E
## 1     60   1.75       A
## 2     72   1.80       B
## 4     90   1.90       D
## 6     72   1.91       F
```

