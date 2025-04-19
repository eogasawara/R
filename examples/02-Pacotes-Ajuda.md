
``` r
#funções gráficas qplot
?qplot

library(ggplot2)

?qplot

# deixei a instalação comentada, mas para rodar tire o comentário ...
#install.packages("ggplot2")
```


``` r
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
```

```
##  [1] -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4  0.6  0.8  1.0
```

``` r
y <- x^3
y
```

```
##  [1] -1.000 -0.512 -0.216 -0.064 -0.008  0.000  0.008  0.064  0.216  0.512  1.000
```

``` r
qplot(x, y)
```

![plot of chunk unnamed-chunk-2](fig/02-Pacotes-Ajuda/unnamed-chunk-2-1.png)


``` r
# criar uma função para jogada 
dado <- 1:6
dados <- sample(dado, size = 2, replace = TRUE)
sum(dados)
```

```
## [1] 8
```


``` r
jogada <-  function() {
  dado <- 1:6
  dados <- sample(dado, size = 2, replace = TRUE)
  return(sum(dados))
}
```


``` r
simulacao_minima <- replicate(30, jogada())
qplot(simulacao_minima, binwidth =1)
```

![plot of chunk unnamed-chunk-5](fig/02-Pacotes-Ajuda/unnamed-chunk-5-1.png)

``` r
mean(simulacao_minima)
```

```
## [1] 7.166667
```


``` r
simulacao_completa <- replicate(10000, jogada())
qplot(simulacao_completa, binwidth =1)
```

![plot of chunk unnamed-chunk-6](fig/02-Pacotes-Ajuda/unnamed-chunk-6-1.png)

``` r
mean(simulacao_completa)
```

```
## [1] 7.0029
```


``` r
?sqrt
```


``` r
#slide 11
require(stats) # for spline
require(graphics)
xx <- -9:9
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(abs(xx)), n=101), col = "pink")
```

![plot of chunk unnamed-chunk-8](fig/02-Pacotes-Ajuda/unnamed-chunk-8-1.png)


``` r
?sample
```


``` r
simulacao = replicate(10000, 
                      sample(2:12, 
                      replace=TRUE, 
                      prob=c(1,2,3,4,5,6,5,4,3,2,1)/36))
qplot(simulacao, binwidth=1)
```

![plot of chunk unnamed-chunk-10](fig/02-Pacotes-Ajuda/unnamed-chunk-10-1.png)

``` r
mean(simulacao)
```

```
## [1] 7.000027
```

