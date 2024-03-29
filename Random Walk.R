title: "Random_Walk"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


## Code

```{r cars}
x <- c(0)
y <- c(0)
for( i in c(1:100)){
  d <- runif(1)
  s <- round(runif(1))
  if( d <= 0.5 ) {
    x <- c( x, x[i]+(-1)^s )
    y <- c( y, y[i] )
  }
  else {
    x <- c( x, x[i] )
    y <- c( y, y[i]+(-1)^s )
  }
}
```

## Data

```{r}
str(x)
str(y)
```

## Plots

Random walk result : 

```{r pressure, echo=FALSE}
plot(x,y)
```