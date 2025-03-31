
``` r
faces <- c("ás", "dois", "três", "quatro",
           "cinco", "seis", "sete", "oito",
           "nove", "dez", "valete", "dama", "rei")
naipes = c("ouros", "copas", "paus", "espadas")
baralho <- expand.grid(face=faces, naipe=naipes)
baralho
```

```
##      face   naipe
## 1      ás   ouros
## 2    dois   ouros
## 3    três   ouros
## 4  quatro   ouros
## 5   cinco   ouros
## 6    seis   ouros
## 7    sete   ouros
## 8    oito   ouros
## 9    nove   ouros
## 10    dez   ouros
## 11 valete   ouros
## 12   dama   ouros
## 13    rei   ouros
## 14     ás   copas
## 15   dois   copas
## 16   três   copas
## 17 quatro   copas
## 18  cinco   copas
## 19   seis   copas
## 20   sete   copas
## 21   oito   copas
## 22   nove   copas
## 23    dez   copas
## 24 valete   copas
## 25   dama   copas
## 26    rei   copas
## 27     ás    paus
## 28   dois    paus
## 29   três    paus
## 30 quatro    paus
## 31  cinco    paus
## 32   seis    paus
## 33   sete    paus
## 34   oito    paus
## 35   nove    paus
## 36    dez    paus
## 37 valete    paus
## 38   dama    paus
## 39    rei    paus
## 40     ás espadas
## 41   dois espadas
## 42   três espadas
## 43 quatro espadas
## 44  cinco espadas
## 45   seis espadas
## 46   sete espadas
## 47   oito espadas
## 48   nove espadas
## 49    dez espadas
## 50 valete espadas
## 51   dama espadas
## 52    rei espadas
```


``` r
baralho$valor <- c(1:13, 1:13, 1:13, 1:13)
baralho
```

```
##      face   naipe valor
## 1      ás   ouros     1
## 2    dois   ouros     2
## 3    três   ouros     3
## 4  quatro   ouros     4
## 5   cinco   ouros     5
## 6    seis   ouros     6
## 7    sete   ouros     7
## 8    oito   ouros     8
## 9    nove   ouros     9
## 10    dez   ouros    10
## 11 valete   ouros    11
## 12   dama   ouros    12
## 13    rei   ouros    13
## 14     ás   copas     1
## 15   dois   copas     2
## 16   três   copas     3
## 17 quatro   copas     4
## 18  cinco   copas     5
## 19   seis   copas     6
## 20   sete   copas     7
## 21   oito   copas     8
## 22   nove   copas     9
## 23    dez   copas    10
## 24 valete   copas    11
## 25   dama   copas    12
## 26    rei   copas    13
## 27     ás    paus     1
## 28   dois    paus     2
## 29   três    paus     3
## 30 quatro    paus     4
## 31  cinco    paus     5
## 32   seis    paus     6
## 33   sete    paus     7
## 34   oito    paus     8
## 35   nove    paus     9
## 36    dez    paus    10
## 37 valete    paus    11
## 38   dama    paus    12
## 39    rei    paus    13
## 40     ás espadas     1
## 41   dois espadas     2
## 42   três espadas     3
## 43 quatro espadas     4
## 44  cinco espadas     5
## 45   seis espadas     6
## 46   sete espadas     7
## 47   oito espadas     8
## 48   nove espadas     9
## 49    dez espadas    10
## 50 valete espadas    11
## 51   dama espadas    12
## 52    rei espadas    13
```

``` r
head(baralho)
```

```
##     face naipe valor
## 1     ás ouros     1
## 2   dois ouros     2
## 3   três ouros     3
## 4 quatro ouros     4
## 5  cinco ouros     5
## 6   seis ouros     6
```


``` r
baralho[1, 1] 
```

```
## [1] ás
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[1, "face"] 
```

```
## [1] ás
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[c(1,2), 1] 
```

```
## [1] ás   dois
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[ , 1]
```

```
##  [1] ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei    ás     dois   três   quatro cinco  seis   sete   oito   nove  
## [23] dez    valete dama   rei    ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei    ás     dois   três   quatro cinco 
## [45] seis   sete   oito   nove   dez    valete dama   rei   
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```


``` r
baralho[c(11,14), "face"] 
```

```
## [1] valete ás    
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[c(11,14), 1] 
```

```
## [1] valete ás    
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho$face[c(11,14)]
```

```
## [1] valete ás    
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```


``` r
baralho[11, 1:2] 
```

```
##      face naipe
## 11 valete ouros
```

``` r
baralho[c(11,14), 1:2] 
```

```
##      face naipe
## 11 valete ouros
## 14     ás copas
```

``` r
baralho[c(11,14), c("face", "naipe")] 
```

```
##      face naipe
## 11 valete ouros
## 14     ás copas
```


``` r
baralho[c(11,14), "face", drop=FALSE] 
```

```
##      face
## 11 valete
## 14     ás
```

``` r
baralho[c(11,14), 1, drop=FALSE] 
```

```
##      face
## 11 valete
## 14     ás
```


``` r
baralho[c(1:13), 1] 
```

```
##  [1] ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei   
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[-c(14:52), 1] 
```

```
##  [1] ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei   
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```

``` r
baralho[1:3, -1] 
```

```
##   naipe valor
## 1 ouros     1
## 2 ouros     2
## 3 ouros     3
```


``` r
baralho[ , ]
```

```
##      face   naipe valor
## 1      ás   ouros     1
## 2    dois   ouros     2
## 3    três   ouros     3
## 4  quatro   ouros     4
## 5   cinco   ouros     5
## 6    seis   ouros     6
## 7    sete   ouros     7
## 8    oito   ouros     8
## 9    nove   ouros     9
## 10    dez   ouros    10
## 11 valete   ouros    11
## 12   dama   ouros    12
## 13    rei   ouros    13
## 14     ás   copas     1
## 15   dois   copas     2
## 16   três   copas     3
## 17 quatro   copas     4
## 18  cinco   copas     5
## 19   seis   copas     6
## 20   sete   copas     7
## 21   oito   copas     8
## 22   nove   copas     9
## 23    dez   copas    10
## 24 valete   copas    11
## 25   dama   copas    12
## 26    rei   copas    13
## 27     ás    paus     1
## 28   dois    paus     2
## 29   três    paus     3
## 30 quatro    paus     4
## 31  cinco    paus     5
## 32   seis    paus     6
## 33   sete    paus     7
## 34   oito    paus     8
## 35   nove    paus     9
## 36    dez    paus    10
## 37 valete    paus    11
## 38   dama    paus    12
## 39    rei    paus    13
## 40     ás espadas     1
## 41   dois espadas     2
## 42   três espadas     3
## 43 quatro espadas     4
## 44  cinco espadas     5
## 45   seis espadas     6
## 46   sete espadas     7
## 47   oito espadas     8
## 48   nove espadas     9
## 49    dez espadas    10
## 50 valete espadas    11
## 51   dama espadas    12
## 52    rei espadas    13
```

``` r
baralho[1, ] 
```

```
##   face naipe valor
## 1   ás ouros     1
```

``` r
baralho[ , 1] 
```

```
##  [1] ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei    ás     dois   três   quatro cinco  seis   sete   oito   nove  
## [23] dez    valete dama   rei    ás     dois   três   quatro cinco  seis   sete   oito   nove   dez    valete dama   rei    ás     dois   três   quatro cinco 
## [45] seis   sete   oito   nove   dez    valete dama   rei   
## Levels: ás dois três quatro cinco seis sete oito nove dez valete dama rei
```


``` r
baralho[1, c(TRUE, TRUE, FALSE)]
```

```
##   face naipe
## 1   ás ouros
```


``` r
filtro <- baralho$valor < 3
baralho[filtro, ]
```

```
##    face   naipe valor
## 1    ás   ouros     1
## 2  dois   ouros     2
## 14   ás   copas     1
## 15 dois   copas     2
## 27   ás    paus     1
## 28 dois    paus     2
## 40   ás espadas     1
## 41 dois espadas     2
```

``` r
baralho[baralho$valor < 3,]
```

```
##    face   naipe valor
## 1    ás   ouros     1
## 2  dois   ouros     2
## 14   ás   copas     1
## 15 dois   copas     2
## 27   ás    paus     1
## 28 dois    paus     2
## 40   ás espadas     1
## 41 dois espadas     2
```


``` r
ordem <- sample(1:nrow(baralho))
ordem
```

```
##  [1] 34 31  8 33 18 50 43 47 35 12  9 28 46 19 22 49 29  3  1 15 37  4 42 38 10 23 48 32 25  6 27 16 44  7 45 52 20 24 41 11 21 17 39 13  2  5 36 26 51 30 14
## [52] 40
```

``` r
cartas <- baralho[ordem,]
cartas
```

```
##      face   naipe valor
## 34   oito    paus     8
## 31  cinco    paus     5
## 8    oito   ouros     8
## 33   sete    paus     7
## 18  cinco   copas     5
## 50 valete espadas    11
## 43 quatro espadas     4
## 47   oito espadas     8
## 35   nove    paus     9
## 12   dama   ouros    12
## 9    nove   ouros     9
## 28   dois    paus     2
## 46   sete espadas     7
## 19   seis   copas     6
## 22   nove   copas     9
## 49    dez espadas    10
## 29   três    paus     3
## 3    três   ouros     3
## 1      ás   ouros     1
## 15   dois   copas     2
## 37 valete    paus    11
## 4  quatro   ouros     4
## 42   três espadas     3
## 38   dama    paus    12
## 10    dez   ouros    10
## 23    dez   copas    10
## 48   nove espadas     9
## 32   seis    paus     6
## 25   dama   copas    12
## 6    seis   ouros     6
## 27     ás    paus     1
## 16   três   copas     3
## 44  cinco espadas     5
## 7    sete   ouros     7
## 45   seis espadas     6
## 52    rei espadas    13
## 20   sete   copas     7
## 24 valete   copas    11
## 41   dois espadas     2
## 11 valete   ouros    11
## 21   oito   copas     8
## 17 quatro   copas     4
## 39    rei    paus    13
## 13    rei   ouros    13
## 2    dois   ouros     2
## 5   cinco   ouros     5
## 36    dez    paus    10
## 26    rei   copas    13
## 51   dama espadas    12
## 30 quatro    paus     4
## 14     ás   copas     1
## 40     ás espadas     1
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
##      face   naipe valor
## 2    dois   ouros     2
## 8    oito   ouros     8
## 48   nove espadas     9
## 19   seis   copas     6
## 14     ás   copas     1
## 51   dama espadas    12
## 31  cinco    paus     5
## 15   dois   copas     2
## 1      ás   ouros     1
## 13    rei   ouros    13
## 30 quatro    paus     4
## 27     ás    paus     1
## 35   nove    paus     9
## 17 quatro   copas     4
## 26    rei   copas    13
## 22   nove   copas     9
## 25   dama   copas    12
## 34   oito    paus     8
## 42   três espadas     3
## 32   seis    paus     6
## 47   oito espadas     8
## 46   sete espadas     7
## 4  quatro   ouros     4
## 3    três   ouros     3
## 39    rei    paus    13
## 11 valete   ouros    11
## 21   oito   copas     8
## 28   dois    paus     2
## 9    nove   ouros     9
## 16   três   copas     3
## 23    dez   copas    10
## 33   sete    paus     7
## 36    dez    paus    10
## 24 valete   copas    11
## 29   três    paus     3
## 38   dama    paus    12
## 10    dez   ouros    10
## 18  cinco   copas     5
## 5   cinco   ouros     5
## 20   sete   copas     7
## 40     ás espadas     1
## 12   dama   ouros    12
## 52    rei espadas    13
## 44  cinco espadas     5
## 45   seis espadas     6
## 6    seis   ouros     6
## 41   dois espadas     2
## 43 quatro espadas     4
## 50 valete espadas    11
## 37 valete    paus    11
## 49    dez espadas    10
## 7    sete   ouros     7
```

