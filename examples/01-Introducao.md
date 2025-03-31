
``` r
1 + 2
```

```
## [1] 3
```

``` r
1:10
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

``` r
a <- 1
a
```

```
## [1] 1
```

``` r
a + 2
```

```
## [1] 3
```

``` r
dado <- 1:6
dado
```

```
## [1] 1 2 3 4 5 6
```

``` r
dado[1]
```

```
## [1] 1
```

``` r
dado[6]
```

```
## [1] 6
```

``` r
dado - 1
```

```
## [1] 0 1 2 3 4 5
```


``` r
  3 + 2
```

```
## [1] 5
```

``` r
  3 ^ 2
```

```
## [1] 9
```

``` r
  3 / 2
```

```
## [1] 1.5
```

``` r
  3 %% 2
```

```
## [1] 1
```


``` r
#slide 11
dado <- 1:6
2 * dado
```

```
## [1]  2  4  6  8 10 12
```

``` r
dado * dado
```

```
## [1]  1  4  9 16 25 36
```


``` r
round(3.1415)
```

```
## [1] 3
```

``` r
round(3.1415, 2)
```

```
## [1] 3.14
```

``` r
?round
mean(dado)
```

```
## [1] 3.5
```

``` r
round(mean(dado))
```

```
## [1] 4
```


``` r
sample(x = dado, size = 2)
```

```
## [1] 2 3
```

``` r
sample(dado, 2)
```

```
## [1] 6 1
```

``` r
sample(x=dado, size=2, replace=TRUE)
```

```
## [1] 4 1
```

``` r
?sample
args(sample)
```

```
## function (x, size, replace = FALSE, prob = NULL) 
## NULL
```


``` r
set.seed(1)
sample(x=dado, size=2, replace=TRUE)
```

```
## [1] 1 4
```

``` r
sample(replace=TRUE, x=dado, size=2)
```

```
## [1] 1 2
```

``` r
sample(dado, 2, TRUE)
```

```
## [1] 5 3
```

