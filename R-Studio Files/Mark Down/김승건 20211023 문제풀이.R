# 1부터 100까지의 수 중에서 3의 배수이면서 4의 배수는 아닌 수의 합을 구하라
x <- c(1:100)
x1 <- x[x%%3==0]

y <- c(1:100)
y1 <- y[y%%4==0]

diffx <- setdiff(x1, y1)
diffx

sum(diffx)

# x와 n입력하면 1부터 n까지의 수 중에서 x의 
# 배수 합을 구해주는 사용자 정의 함수를 만들어라

fn = function(x, n){
    sum <- 0
    for ( i in 1:n) {
        if (i %% x == 0) {
            sum <- sum + i
        }
    }
    return(sum)
}
fn(3,10)

install.packages("hflights")

library(hflights)
?hflights

table[hflights]
is.na(hflights)
sum(is.na(hflights))


max(hflights)/60

str(hflights)
data.frame(hflights)
head(hflights)
options(digits = )
max(is.na(hflights$AirTime))
airT <- na.omit(hflights$AirTime)
airH <- max(airT) %/% 60
airM <- max(airT) %% 60
print(paste0(airH, 'h'))
print(paste0(airM, 'm'))

maxDis <- max(hflights$Distance)
print(paste0(maxDis,'miles'))

as.array(hflights$Cancelled)
hflights[,"Cancelled", "1"]

data.frame(hflights$Cancelled, 1)
cancelledF <- table(hflights$Cancelled)
cancelledF

table(is.na(hflights$Cancelled)) # NA 갯수 확인
table(hflights$Cancelled)[2]
