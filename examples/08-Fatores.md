
``` r
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
```


``` r
pain <- c(0,3,2,2,1)
fpain <- factor(pain,levels=0:3, ordered=TRUE)
fpain
```

```
## [1] 0 3 2 2 1
## Levels: 0 < 1 < 2 < 3
```


``` r
levels(fpain) <- c("sem","baixa","média","alta")
fpain
```

```
## [1] sem   alta  média média baixa
## Levels: sem < baixa < média < alta
```


``` r
lev <- rep("", length(height))

for (i in 1:length(height)) {
  if (height[i] < 1.7)
    lev[i] <- "baixa"
  else if (height[i] < 1.9)
    lev[i] <- "média"
  else 
    lev[i] <- "alta"
}
lev <- factor(lev,levels=c("baixa", "média", "alta"), ordered=TRUE)
lev
```

```
## [1] média média baixa alta  média alta 
## Levels: baixa < média < alta
```


``` r
lev <- cut(height, breaks=c(0, 1.7, 1.9, .Machine$double.xmax), ordered=TRUE)
lev
```

```
## [1] (1.7,1.9]      (1.7,1.9]      (0,1.7]        (1.7,1.9]      (1.7,1.9]      (1.9,1.8e+308]
## Levels: (0,1.7] < (1.7,1.9] < (1.9,1.8e+308]
```

``` r
levels(lev) <- c("baixa", "média", "alta")
lev
```

```
## [1] média média baixa média média alta 
## Levels: baixa < média < alta
```

