# repeat { 
#        반복 수행할 문장        블록 안의 문장을 반복해서 수행 무한루프에 걸리지 않게
#                                   끝을 지정해줄 것
# }

# while {
#       조건식이 참일 때 수행할 문장    조건이 만족하는 동안
# }

# for (변수 in 데이터) {
#       반복 수행할 문장        데이터의 각 요소를 변수에 할당하면서 
#                                   각각에 대해 블록 안의 문장을 수행한다
# }

# 반복문 실습
# 1. repeat 
# sum, i
i <- 1
sum <- 0
repeat {
    if (i > 10){
        break
    }
    sum <- sum + i
    i <- i + 1
}
print(sum)

# while
i <- 1
sum <- 0 
while (i <= 10) {
    sum <- sum + i
    i <- i + 1
}
print(sum)

# for
sum <- 0
for ( i in 1:10 ) {
    sum <- sum + i
}
print(sum)

# 10!
i <- 1
while ( i <= 10) {
    print(i)
    i <- i +1
}

# paste(안에, 묶인, 여러, 요소를, 묶어줌)

x <- paste(1, 2, 3, 4)
x

# for 문을 이용해 1부터 10까지 증가시키기
for (i in 1:10) {
    print(i)
}

# for 구문을 이용해 2단 구구단 만들기
for (i in 1:9) {
    print(paste(2, "X", i, "=", 2*i))
}

product <- 1
for (i in 1:10) {
    product <- product * i
}
print(product)

# 1 에서 100까지 홀수의 합
sum =  0 # 1이 아닌 0을 주는 이유: 0을 주지 않으면 1부터 더함으로
for (i in 1:100) { # 1부터 100까지 돌아가는 구조
    if(i %% 2 != 0){ # 나머지가 0이 되지 않는 것들
        sum <- sum + i # 나머지가 0이 되지 않느 것들을 순차적으로 계속 더함
    }
}
print(sum)


# practice ? 2 랑 3 기계언어상 
#나눠서 소수가 남으면 소수점부분은 버리고 정수부분만 가져감

sum = 0
for (i in 1:100){
    if (i %/% 2 == 1){
        sum <- sum + i
    }
}
print(sum)

# 1 ~ 100 사이의 홀수의 합
odd_sum <- 0
for (i in 1:100) {
    if (i %% 2 == 1) {
        odd_sum <- odd_sum + i
    }
}
print(odd_sum)

# 1~ 100 사이의 홀수의 합 2
odd_sum <- 0
for (i in seq(1, 100, by=2)) {
    odd_sum <- odd_sum + i
}
print(odd_sum)


# 구구단 만들기
for (x in 1:9){
    for (y in 2:9){
        print(paste(x, "x", y, "=", x*y))
    }
}

# 표에서 각 숫자의 합 -> 숫자 제곱의 합
# 첫번째 행 합 
# 두번째 행 제곱 
# 세번째 행 세제곱 을 구한 뒤 전부 합하라

# 3*4 표
x = array(1:12, c(3,4))
x

# 숫자 제곱의 합
# 1
sum(x)
# 2
y = x*x
sum(y)

sum = 0
for (i in 1:12){
    if(i == i^i) {
        sum <- sum + 1
    }
}
print(sum)

i <- 1
while (i <= 12) {
    print(i)
    i <- i + 1
}
print(i)

# 3
x = array(1:12, c(3,4))
x
sumx = sum(x[1, ])
sumx
ys = x[2, ]^2
ys

# 문제풀이
mat <- matrix(1:12, nrow=3)
nrow <- 3
ncol <- 4

sum1 <- 0
sum2 <- 0
sum3 <- 0

for (i in 1:nrow) {
    for (k in 1:ncol) {
        sum1 <- sum1 + mat[i,k]
        sum2 <- sum2 + mat[i,k]**2
        sum3 <- sum3 + mat[i,k]**i
    }
}
print(paste(sum1, sum2, sum3))


# 별 그리기 해보기...
for (i in 1:5) {
    star <- ''
    for (k in 1:i) {
        star <- paste0(star, '+')
    }
    print(star)
}

# List 만들기
lst <- list()
lst <- append(lst, 3)
lst <- append(lst, 5)
lst <- append(lst, 7)
length(lst)
lst[1]
lst[2]
lst[3]
print(lst)

lst <- list()
for (i in 1:5) {
    lst <- append(lst, i) #자기 자신에다가    
}
lst

for (element in lst) {
    print(element)
}

vec <- c(1,7,8)
for (element in vec) {
    print(element)
    
}
for (element in mat) {
    print(element)
}

# 약수 구하기 나머지가 0 이 되는것
n <- 24
for ( n in 1:i) {
    if (i %% n == 0) {
        print(n)
    }
}

# 약수의 합
sum = 0
for (num in 1:N) {
    if (N %% num == 0) {
        sum <- sum + n
    }
}
print(sum)

# 완전수 자기자신을 제오한 약수의 합이 자기 자신과 같은 수

# Perfect Number
# 2에서 10000 사이의 완전수를 찾으시오
for (N in 2:10000) {
        sum <- 0
        for (num in 1:N - 1) {
                if (N %% num == 0) {
                    sum <- sum + num
                }
            }
        if (sum == N) {
            print(N)
        }
}
    
