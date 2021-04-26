#dplyr 라이브러리를 이용한 데이터 가공
# filter (행거르기), select(열거르기)
# arrange(sort- ascending(오름차순), descending(내림차순))
# group_by&summarize, mutate
# %>%  chain or pipe 연산의 결과가 다음 연산의 input 으로 사용

library(dplyr)
library(gapminder)

# 1. select (d원하는 열을 추출)

select(gapminder, country, year, lifeExp) %>% head(10)

# 2. filter (원하는 행을 추출)

filter(gapminder, country == 'Croatia')%>% head(10)
filter(gapminder, country == 'Croatia'&year>2000)
filter(gapminder, continent == "Europe"&year == 2007)

# arrange 디폴트는 오름차순

europe_pop <- filter(gapminder, continent == "Europe"&year == 2007)
arrange(europe_pop, lifeExp)

# 내림차순
arrange(europe_pop, desc(lifeExp))

# 아프리카 대륙에서 평균수명이 가장 긴 나라순위 탑5
africa_pop <- filter(gapminder, continent == "Africa"&year == 2007)

arrange(africa_pop, desc(lifeExp)) %>% head(5)

filter(gapminder, continent == 'Africa'&year == 2007) %>%
    arrange(desc(lifeExp)) %>%
    head(5)
    
gapminder %>%
    filter(continent == 'Africa'&year==2007) %>%
    arrange(desc(lifeExp)) %>%
    head(5)

# 4. groub_by 와 summarize

summarise(africa_pop, pop_avg=mean(pop)) 
# 2007년 아프리카 국가별 평균 인구수
summarise(group_by(gapminder, continent), pop_avg=mean(pop))
summarise(group_by(gapminder, country), life_avg=mean(lifeExp))

asia_pop <- gapminder %>%
    filter(continent == "Asia")
    summarise(group_by(asia_pop, country), life_avg=mean(lifeExp))
    summarise(group_by(asia_pop, country), life_avg=mean(lifeExp))%>%
        arrange(desc(life_avg)) %>%
        head(5)

# mpg(mie-per-gallon)
library(ggplot2)    # 1gal =3.785
head(mpg)    

?mpg

head(mpg)
glimpse(mpg)
array(mpg)
summary(mpg)

df <- mpg

# 통합연비

mpg$total <- (mpg$cty + mpg$hwy) / 2
head(mpg)
mean(mpg$total)
summary(mpg$total)
hist(mpg$total)

# 평균연비가 20이상이면 합격, 아니면 불합격

mpg$test <- ifelse(mpg$total>=20, "Bestanden", "nicht Bestanden")
table(mpg$test)
qplot(mpg$test)

# 평균연비가 30이상이면 A, 20이상이면 B, 이외는 C
mpg$grade <- ifelse(mpg$total>=30, "A",
                    ifelse(mpg$total>=20, "B","C"))
table(mpg$grade)

# mutate
mpg %>%
    mutate(grade2=ifelse(mpg$total>=30, "A",
                         ifelse(mpg$total>=20, "B","C")))
mpg <- mpg %>%
    mutate(grade2=ifelse(mpg$total>=30, "A",
                         ifelse(mpg$total>=20, "B","C")))
table(mpg$grade2)
