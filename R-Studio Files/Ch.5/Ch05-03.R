# Base R을 이용한 데이터가공

library(gapminder)
library(dplyr)

glimpse(gapminder)
#행이 1704
#열 6

# tibble 속성이름 (타입 ex. fct, int ) 같이나옴

# 각 나라의 기대 수명(lifeExp)
tail(gapminder[, c('country', 'lifeExp')])
tail(gapminder[, c('country', 'lifeExp', 'year')])

# 샘플링(filtering)과 속성의 추출(filtering and selection)

gapminder[1000:1009, c('country', 'lifeExp', 'year')]
gapminder[gapminder$country == 'Croatia',]

# SQL
# where country = 'Croatia'
# order by Year
# limit 10
# group by continent
# having

gapminder[gapminder$country == 'Croatia', c('year', 'pop')]

# Croatia  의 1990년도 이후의 기대수명과 인구

gapminder[gapminder$country == 'Croatia'&gapminder$year>1990, 
                               c('lifeExp','pop')]
gapminder
gapminder$country
gapminder[gapminder$country == 'Korea, Rep.'&gapminder$lifeExp,]

gapminder[gapminder$country == 'Croatia'&gapminder$year>1990, 
                               c('year', 'lifeExp', 'pop')]

# 행/열 단위의 연산

# apply(대상, 어느방향으로 채울 것이냐 1이면 우측으로 2면  
#밑으로로, 함수)

apply(gapminder[gapminder$country == 'Croatia', c('lifeExp', 'pop')], 
      2, mean)

gapminder[gapminder$country == 'Korea, Rep.']

# CAGR 연평균증가율

# 크로아티아의 연평균 증가율

(4493312/3882229)**(1/55) - 1 

peak2peak = function(x) {
    return(max(x) - min(x))
}
apply(gapminder[gapminder$country == 'Croatia', c('lifeExp', 'pop')],
      2, peak2peak)
