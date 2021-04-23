# 완전수 자기자신을 제오한 약수의 합이 자기 자신과 같은 수

# Perfect Number
# 2에서 10000 사이의 완전수를 찾으시오
for (N in 2:10000) {
    sum <- 0
    for (num in 1:(N - 1)) {
        if (N %% num == 0) {
            sum <- sum + num
        }
    }
    if (sum == N) {
        print(N)
    }
}

