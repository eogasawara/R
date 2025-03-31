
``` r
weight <- 60
height = 1.75
subject <- "A"
healthy <- TRUE
bmi <- weight/height^2  
bmi 
```

```
## [1] 19.59184
```


``` r
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
```


``` r
bmi <- 0
for (i in 1:length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
}
bmi
```

```
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```


``` r
bmi <- 0
for (i in 1:length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
  print(bmi)
}
```

```
## [1] 19.59184
## [1] 19.59184 22.22222
## [1] 19.59184 22.22222 20.93664
## [1] 19.59184 22.22222 20.93664 24.93075
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```

``` r
bmi
```

```
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```


``` r
rm(bmi)
exists("bmi")
```

```
## [1] FALSE
```


``` r
i <- 1
bmi <- 0
while (i <= length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
  i <- i + 1
}
```


``` r
compute_bmi <- function(weight, height) {
  i <- 1
  bmi <- 0
  while (i <= length(weight)) {
    bmi[i] <- weight[i]/height[i]^2
    i <- i + 1
  }
  return(bmi)
} 

bmi <- compute_bmi(weight, height)
bmi
```

```
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```


``` r
compute_bmi <- function(weight, height) {
  resposta <- weight/height^2
  return(resposta)
} 

bmi <- compute_bmi(weight, height)
bmi
```

```
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```


``` r
compute_bmi(80, 1.79)
```

```
## [1] 24.96801
```

``` r
compute_bmi(weight, height)
```

```
## [1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```

