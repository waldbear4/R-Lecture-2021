# s.90 예제
# 1. x = c(1:5)인 벡터가 있다. 이 벡터에 c(6:10)인 벡터를 추가하라
# 2. x = c(1:10)인 벡터에서 짝수 번쨰 요소만 남긴 x를 만들어라

# 연습생풀이
# 1번
x = c(1:5)
y = c(6:10)
union(x, y)

# 2번
# 재확인할 것
x = c(1:10)
y = c(seq(1, 10, by=1))
z = c(seq(1, 10, by=2))
w = intersect(y, z)
x = c(1:10) 
if (x/2) {
  
}

# 정답
# 1번
x = c(1:5)
x = c(x, c(6:10))

# 2번
x = c(1:10)
x = x[seq(2,length(x),2)]
x
