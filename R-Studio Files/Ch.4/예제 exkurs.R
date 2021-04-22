#01 ~ 02

x <- x[x%%3==0]
x
y <- y[y%%4==0]
y
x <- c(1:100)
x
x <- x[x%%3==0]

y <- c(1:100)
y

y <- y[y%%4==0]

intersect(x, y)

sum(intersect(x, y))

#03
airquality
head(airquality)
typeof(airquality)
list(airquality)

#04
?airquality

#05
max(airquality$Wind)
airquality[airquality$Wind == max(airquality$Wind), c("Month", "Day")]

#06
sum(is.na(airquality))

#07
?quakes

quakes
max(quakes$mag)


# 1번
```{r}
x <- c(1:100)
x[x%%3==0]
```
# 1번
```{r}
y <- c(1:100)
y[y%%4==0]
```
# 2번
```{r}
x[x%%3==0]
y[y%%4==0]
intersect(x[x%%3==0],y[y%%4==0])
```
```{r}
sum(intersect(x[x%%3==0],y[y%%4==0]))
```
# 3번
```{r}
?airquality
# New York
```

# 4번
```{r}
?airquality
화씨
```

# 5번
```{r}
max(airquality$Wind)
airquality[airquality$Wind == max(airquality$Wind), c("Day")]
```

# 6번
```{r}
sum(is.na(airquality))
```
#7번
```{r}
?quakes
# Fiji
```

#8번
```{r}
max(quakes$mag)
```


# Date type 으로
days <- 

