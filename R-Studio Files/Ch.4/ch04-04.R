# 함수
fact <- function(x){
    prod <- 1 
    for(i in 1:x) {
        prod <- prod * i
    }
    return(prod)
}
fact(5)
fact(10)

# 정수 a ~ b 의 합을 구하는 함수

rangesum <- function(x){
    prod1 <- 1
    for(i in 1:x) {
        prod1 <- factorial(x)
    }
    return(prod1)
}
fact(1)
fact(5)
fact(3)
fact(7)


# 답
range_sum <- function(a, b){
    sum = 0
    for ( i in a:b) {
        sum <- sum + i
    }
    return(sum)
}
range_sum(1,10)

# 재귀함수 n! = n*(n-1)! 단 n=1 일 때 Recursive Call
fecto <- function(n) {
    if ( n == 0){
        return(1)
    }
    return(n * fecto(n-1))
}
fecto(10)


# 피보나치 수열 n>=2
# fibo(n) == fibo(n-1)+fibo(n-2)
# fibo(0) == 1
# fibo(1) == 1

fibo <- function(n) {
    if (n <= 2) {
        return(2)
    }
    return (n-1)+(n-2)
}
fecto(3)
fecto(1)
fecto(2)
fecto(0)

# 답
fibo <- function(n) {
    if (n == 0 | n == 1) {
        return(1)
    }
    return(fibo(n-1)+fibo(n-2))
}
for (i in 0:10) {
    print(paste(i, fibo(i)))
}

#peak to peak 함수
peak2peak <- function(x) {
    return(max(x) - min(x))
}
mat <- matrix(1:12, nrow=3)
apply(mat, 1, mean)
mat
apply(mat, 1, peak2peak)
apply(mat, 2, peak2peak)

