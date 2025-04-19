
``` r
u <- "https://github.com/eogasawara/R/raw/main/baralho.rda"
load(url(u))
```

```
## Warning in load(url(u)): cannot open URL 'https://github.com/eogasawara/R/raw/main/baralho.rda': HTTP status was '404 Not Found'
```

```
## Error in load(url(u)): cannot open the connection to 'https://github.com/eogasawara/R/raw/main/baralho.rda'
```

``` r
head(baralho)
```

```
## Error: objeto 'baralho' não encontrado
```


``` r
save(baralho, file="baralho.rda")
```

```
## Error in save(baralho, file = "baralho.rda"): objeto 'baralho' não encontrado
```

``` r
rm(baralho)
```

```
## Warning in rm(baralho): objeto 'baralho' não encontrado
```


``` r
load(file="baralho.rda")
head(baralho)
```

```
##     face naipe
## 1     ás ouros
## 2   dois ouros
## 3   três ouros
## 4 quatro ouros
## 5  cinco ouros
## 6   seis ouros
```


``` r
baralho$idx <- 1:52
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   3
## 4 quatro ouros   4
## 5  cinco ouros   5
## 6   seis ouros   6
```


``` r
baralho$idx[c(1,3,5)] <- 1
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   1
## 4 quatro ouros   4
## 5  cinco ouros   1
## 6   seis ouros   6
```

``` r
baralho$idx[4:6] <- baralho$idx[4:6] + 1
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   1
## 4 quatro ouros   5
## 5  cinco ouros   2
## 6   seis ouros   7
```


``` r
baralho$idx <- 1:52
vec <- (baralho$idx %% 2 == 1)
idx <- baralho$idx[vec]
idx
```

```
##  [1]  1  3  5  7  9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49 51
```

``` r
cartas <- baralho[vec,]
cartas
```

```
##      face   naipe idx
## 1      ás   ouros   1
## 3    três   ouros   3
## 5   cinco   ouros   5
## 7    sete   ouros   7
## 9    nove   ouros   9
## 11 valete   ouros  11
## 13    rei   ouros  13
## 15   dois   copas  15
## 17 quatro   copas  17
## 19   seis   copas  19
## 21   oito   copas  21
## 23    dez   copas  23
## 25   dama   copas  25
## 27     ás    paus  27
## 29   três    paus  29
## 31  cinco    paus  31
## 33   sete    paus  33
## 35   nove    paus  35
## 37 valete    paus  37
## 39    rei    paus  39
## 41   dois espadas  41
## 43 quatro espadas  43
## 45   seis espadas  45
## 47   oito espadas  47
## 49    dez espadas  49
## 51   dama espadas  51
```


``` r
1 > 2
```

```
## [1] FALSE
```

``` r
1 > c(0, 1, 2)
```

```
## [1]  TRUE FALSE FALSE
```

``` r
c(1, 2, 3) == c(3, 2, 1)
```

```
## [1] FALSE  TRUE FALSE
```

``` r
1 %in% c(3, 4, 5)
```

```
## [1] FALSE
```

``` r
c(1, 2, 3) %in% c(3, 4, 5)
```

```
## [1] FALSE FALSE  TRUE
```


``` r
x <- baralho$face == "dama" & baralho$naipe == "espadas"
head(baralho[x,])
```

```
##    face   naipe idx
## 51 dama espadas  51
```

``` r
x <- baralho$face == "dama" | baralho$naipe == "espadas"
head(baralho[x,])
```

```
##    face   naipe idx
## 12 dama   ouros  12
## 25 dama   copas  25
## 38 dama    paus  38
## 40   ás espadas  40
## 41 dois espadas  41
## 42 três espadas  42
```


``` r
1 + NA
```

```
## [1] NA
```

``` r
NA == 1
```

```
## [1] NA
```

``` r
c(NA, 1:50)
```

```
##  [1] NA  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
```

``` r
mean(c(NA, 1:50))
```

```
## [1] NA
```

``` r
mean(c(NA, 1:50), na.rm = TRUE)
```

```
## [1] 25.5
```


``` r
filtro <- baralho$valor < 3
baralho[filtro, ]
```

```
## [1] face  naipe idx  
## <0 linhas> (ou row.names de comprimento 0)
```

``` r
baralho[baralho$valor < 3,]
```

```
## [1] face  naipe idx  
## <0 linhas> (ou row.names de comprimento 0)
```


``` r
ordem <- sample(1:nrow(baralho))
ordem
```

```
##  [1] 25 44 11 40 24 47 30 38 48 35 20 15 52 33  1 36 50 27 45 32  4 31  6 29 34 21  2 18 16 12 41 49  3 23  7  9 46 10 13 22  5 17 37 26 19 51 42  8 28 14 39
## [52] 43
```

``` r
cartas <- baralho[ordem,]
cartas
```

```
##      face   naipe idx
## 25   dama   copas  25
## 44  cinco espadas  44
## 11 valete   ouros  11
## 40     ás espadas  40
## 24 valete   copas  24
## 47   oito espadas  47
## 30 quatro    paus  30
## 38   dama    paus  38
## 48   nove espadas  48
## 35   nove    paus  35
## 20   sete   copas  20
## 15   dois   copas  15
## 52    rei espadas  52
## 33   sete    paus  33
## 1      ás   ouros   1
## 36    dez    paus  36
## 50 valete espadas  50
## 27     ás    paus  27
## 45   seis espadas  45
## 32   seis    paus  32
## 4  quatro   ouros   4
## 31  cinco    paus  31
## 6    seis   ouros   6
## 29   três    paus  29
## 34   oito    paus  34
## 21   oito   copas  21
## 2    dois   ouros   2
## 18  cinco   copas  18
## 16   três   copas  16
## 12   dama   ouros  12
## 41   dois espadas  41
## 49    dez espadas  49
## 3    três   ouros   3
## 23    dez   copas  23
## 7    sete   ouros   7
## 9    nove   ouros   9
## 46   sete espadas  46
## 10    dez   ouros  10
## 13    rei   ouros  13
## 22   nove   copas  22
## 5   cinco   ouros   5
## 17 quatro   copas  17
## 37 valete    paus  37
## 26    rei   copas  26
## 19   seis   copas  19
## 51   dama espadas  51
## 42   três espadas  42
## 8    oito   ouros   8
## 28   dois    paus  28
## 14     ás   copas  14
## 39    rei    paus  39
## 43 quatro espadas  43
```


``` r
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
```

```
##      face   naipe idx
## 33   sete    paus  33
## 11 valete   ouros  11
## 9    nove   ouros   9
## 29   três    paus  29
## 2    dois   ouros   2
## 10    dez   ouros  10
## 32   seis    paus  32
## 12   dama   ouros  12
## 17 quatro   copas  17
## 38   dama    paus  38
## 13    rei   ouros  13
## 48   nove espadas  48
## 23    dez   copas  23
## 8    oito   ouros   8
## 43 quatro espadas  43
## 19   seis   copas  19
## 42   três espadas  42
## 36    dez    paus  36
## 1      ás   ouros   1
## 45   seis espadas  45
## 5   cinco   ouros   5
## 6    seis   ouros   6
## 16   três   copas  16
## 3    três   ouros   3
## 25   dama   copas  25
## 7    sete   ouros   7
## 30 quatro    paus  30
## 51   dama espadas  51
## 14     ás   copas  14
## 24 valete   copas  24
## 40     ás espadas  40
## 41   dois espadas  41
## 39    rei    paus  39
## 28   dois    paus  28
## 34   oito    paus  34
## 26    rei   copas  26
## 47   oito espadas  47
## 4  quatro   ouros   4
## 49    dez espadas  49
## 50 valete espadas  50
## 35   nove    paus  35
## 37 valete    paus  37
## 46   sete espadas  46
## 52    rei espadas  52
## 44  cinco espadas  44
## 20   sete   copas  20
## 21   oito   copas  21
## 22   nove   copas  22
## 18  cinco   copas  18
## 31  cinco    paus  31
## 27     ás    paus  27
## 15   dois   copas  15
```

