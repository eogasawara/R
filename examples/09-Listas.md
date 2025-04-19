
``` r
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
```


``` r
mybag <- list(weight, height, subject, 0, "a")
mybag
```

```
## [[1]]
## [1] 60 72 57 90 95 72
## 
## [[2]]
## [1] 1.75 1.80 1.65 1.90 1.74 1.91
## 
## [[3]]
## [1] "A" "B" "C" "D" "E" "F"
## 
## [[4]]
## [1] 0
## 
## [[5]]
## [1] "a"
```


``` r
n <- length(mybag)
mybag[[n+1]] <- "b"
mybag
```

```
## [[1]]
## [1] 60 72 57 90 95 72
## 
## [[2]]
## [1] 1.75 1.80 1.65 1.90 1.74 1.91
## 
## [[3]]
## [1] "A" "B" "C" "D" "E" "F"
## 
## [[4]]
## [1] 0
## 
## [[5]]
## [1] "a"
## 
## [[6]]
## [1] "b"
```


``` r
slice <- mybag[1]
slice
```

```
## [[1]]
## [1] 60 72 57 90 95 72
```

``` r
is.list(slice)
```

```
## [1] TRUE
```


``` r
slice <- mybag[c(1,3)]
slice
```

```
## [[1]]
## [1] 60 72 57 90 95 72
## 
## [[2]]
## [1] "A" "B" "C" "D" "E" "F"
```

``` r
is.list(slice)
```

```
## [1] TRUE
```


``` r
is.vector(slice)
```

```
## [1] TRUE
```


``` r
h <- mybag[[1]]
h
```

```
## [1] 60 72 57 90 95 72
```


``` r
is.vector(h)
```

```
## [1] TRUE
```

``` r
is.list(h)
```

```
## [1] FALSE
```


``` r
mybag <- list(weight=weight, height=height, subject=subject, 
              valor=0, nome="a")
mybag
```

```
## $weight
## [1] 60 72 57 90 95 72
## 
## $height
## [1] 1.75 1.80 1.65 1.90 1.74 1.91
## 
## $subject
## [1] "A" "B" "C" "D" "E" "F"
## 
## $valor
## [1] 0
## 
## $nome
## [1] "a"
```


``` r
mybag$bmi <- mybag$weight/mybag$height^2
mybag[[4]] <- NULL
mybag$nome <- NULL
mybag
```

```
## $weight
## [1] 60 72 57 90 95 72
## 
## $height
## [1] 1.75 1.80 1.65 1.90 1.74 1.91
## 
## $subject
## [1] "A" "B" "C" "D" "E" "F"
## 
## $bmi
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```

