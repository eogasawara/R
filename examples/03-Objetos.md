
``` r
dado <- c(1, 2, 3, 4, 5, 6)
dado
```

```
## [1] 1 2 3 4 5 6
```

``` r
is.vector(dado)
```

```
## [1] TRUE
```


``` r
numero <- 5
numero
```

```
## [1] 5
```

``` r
is.vector(numero)
```

```
## [1] TRUE
```

``` r
length(numero)
```

```
## [1] 1
```

``` r
length(dado)
```

```
## [1] 6
```


``` r
inteiro <- 1L
texto <- "ás"

typeof(inteiro)
```

```
## [1] "integer"
```

``` r
typeof(texto)
```

```
## [1] "character"
```


``` r
cartas <- 1L:13L
faces <- c("ás", "dois", "três", "quatro",
          "cinco", "seis", "sete", "oito",
          "nove", "dez", "valete", "dama", "rei")

n <- sum(cartas)
is.integer(n)
```

```
## [1] TRUE
```

``` r
m <- max(faces)
m
```

```
## [1] "valete"
```


``` r
dado <- c(1, 2, 3, 4, 5, 6)
dado
```

```
## [1] 1 2 3 4 5 6
```

``` r
typeof(dado)
```

```
## [1] "double"
```


``` r
3 > 4
```

```
## [1] FALSE
```

``` r
logico <- c(TRUE, FALSE, 
            3 >= 4, 3 < 4, 
            3 <= 4, 3 < 4, 
            3 != 4, 4 == 4)
logico
```

```
## [1]  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
```

``` r
typeof(logico)
```

```
## [1] "logical"
```


``` r
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
```

```
## [1] 1+1i 1+2i 1+3i
```

``` r
typeof(comp)
```

```
## [1] "complex"
```


``` r
r <- raw(3)
typeof(r)
```

```
## [1] "raw"
```

``` r
r[2] <- as.raw(255) 
r[3] <- as.raw(1024) 
```

```
## Warning: valores fora do limite considerados como 0 na coerção para tipo raw
```

``` r
r
```

```
## [1] 00 ff 00
```


``` r
dado <- c(1,2,3,4,5,6)
attributes(dado)
```

```
## NULL
```

``` r
names(dado) <- c("um", "dois", "três", 
                 'quatro', 'cinco', 'seis')
attributes(dado)
```

```
## $names
## [1] "um"     "dois"   "três"   "quatro" "cinco"  "seis"
```


``` r
names(dado) <- NULL
dado
```

```
## [1] 1 2 3 4 5 6
```


``` r
dado <- 1:6
dim(dado) <- c(2, 3)
dado
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
attributes(dado)
```

```
## $dim
## [1] 2 3
```


``` r
m <- matrix(dado, nrow = 2)
m
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
n <- matrix(dado, nrow = 2, byrow = TRUE)
n
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
```


``` r
typeof(dado)
```

```
## [1] "integer"
```

``` r
class(dado)
```

```
## [1] "matrix" "array"
```

``` r
attributes(dado)
```

```
## $dim
## [1] 2 3
```


``` r
now <- Sys.time()
now
```

```
## [1] "2025-03-31 15:10:48 -03"
```

``` r
typeof(now)
```

```
## [1] "double"
```

``` r
class(now)
```

```
## [1] "POSIXct" "POSIXt"
```


``` r
genero <- factor(c("feminino", "masculino", 
                   "feminino", "masculino"))

typeof(genero)
```

```
## [1] "integer"
```

``` r
attributes(genero)
```

```
## $levels
## [1] "feminino"  "masculino"
## 
## $class
## [1] "factor"
```


``` r
unclass(genero)
```

```
## [1] 1 2 1 2
## attr(,"levels")
## [1] "feminino"  "masculino"
```

``` r
n <- unclass(genero)

as.integer(genero)
```

```
## [1] 1 2 1 2
```

``` r
as.character(genero)
```

```
## [1] "feminino"  "masculino" "feminino"  "masculino"
```


``` r
sum(c(TRUE, TRUE, FALSE, FALSE))
```

```
## [1] 2
```

``` r
sum(c(1, 1, 0, 0))
```

```
## [1] 2
```

``` r
as.character(1)
```

```
## [1] "1"
```

``` r
as.logical(1)
```

```
## [1] TRUE
```

``` r
as.numeric(FALSE)
```

```
## [1] 0
```


``` r
df <- data.frame(
    face = c("ás", "dois", "quatro"),  
    naipe = c("ouros", "copas", "paus"), 
    valor = c(1, 2, 4))
df
```

```
##     face naipe valor
## 1     ás ouros     1
## 2   dois copas     2
## 3 quatro  paus     4
```


``` r
write.csv(df, file = "cartas.csv", 
          row.names = FALSE, quote=FALSE)

cartas <- read.csv("cartas.csv")
```

