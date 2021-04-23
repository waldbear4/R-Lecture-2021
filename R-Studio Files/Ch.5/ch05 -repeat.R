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
print(sum)
}

# for
sum <- 0
for ( i in 1:10 ) {
    sum <- sum + i
}
print(sum)

