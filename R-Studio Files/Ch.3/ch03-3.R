#배열
x <- array(1:8, c(2,4)) # array(x:y, c(열갯수,행갯수, 표갯수)) 채워지는 순서는 좌측 맨위 고정 2차원
x

y <- array(1:5, c(2,4))
y

z <- array(1:24, c(4,3,2))
z

z[3,2,2] #19 3차원
z[4,3,1] #12 z[열, 행, 표숫자]

# Matrix(2차원 배열)
matrix(1:12, nrow = 3) #행이 3 array(1:12, c(3,4))
array(1:12, c(3,4))
matrix(1:12, nrow = 3, byrow = T) # byrow = T 변수가 고정으로부터 열방향으로 들어감

# Vector를 묶어 배열 생성
v1 = 1:4
v2 = 5:8
v3 = 9:12
cbind(v1, v2, v3) # colum 열 단위로 묶어 배열 생성
rbind(v1, v2, v3) # row  행 단위로 묶어 배열 생성

cbind(x, y) # 2차원 배열을 묶어도 2차월 배열 생성
rbind(x, y)

# 행렬 연산

x <- matrix(1:4, nrow = 2)
y <- matrix(5:8, ncol = 2)
x
y
x + y

x - y
x * y

# 수학적인 행렬곱셈 (dot product)

x %*% y

# 전치 행렬(transpose)
t(x)

# 역행렬 자기와 행렬 곱을 하면 단위행렬 (I, Identity)이 됨
solve(x)

x %*% solve(x)

# 행렬식(determinant)

det(x)

# 배열 연산에 사용되는 함수
apply(x, 1, mean) # 1: 행별로 1을 더해서 평균 ------>
apply(x, 2, mean) # 2: 열별로 2을 더해서 평균
apply(x, 1, sum)
sum(x)
dim(x) # 렬행 갯수를 알려줌

a <- array(1:12, c(3,4))
a
sample(a) # 아무거나 가져옴
sample(a, 5)
sample(a, 4, prob=c(1:12)/24)
sample(a, 4, prob=c(1:12)) #probability 확률


