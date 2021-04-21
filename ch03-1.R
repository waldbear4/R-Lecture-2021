# 변수 Variable

x <- 1
y <- 2
z <- x + y
z

# swapping
temp <- x
x <- y
y <- temp
z

typeof(x)
a <- 'string'
typeof(a)
b <- "double quote"
typeof(b)
c <- '한글'

# 실수 (Numeric)
x <- 5
y <- 2
x / y 

# 복소수(Complex)
xi <- 1 + 2i
yi <- 1 - 2i
xi + yi
xi * yi

# 범주형(Category)
blood_type = factor(c('A', 'B','O','AB'))
blood_type

# 논리형(Boolean)
TRUE
FALSE
T
F

xinf = Inf
yinf = -Inf
xinf / yinf 

# 데이터형 확인 함수
class(x)        # R 객체지향 관점
typeof(x)       # R 언어자체 관점
is.integer(x)
is.numeric(x)
is.complex(xi)
is.character(c)
is.na(xinf/yinf)

# 데이터형 변환 함수
is.integer(as.integer(x))
is.factor(as.factor(c))

# 산술연산자 (Operator) (+, -, *, /, **, %%, %/%)
5 ^ 2
4 ^ (1/2)
x %% y # 나머지 (Modulo)
x %/% y #몫

# 비교연산자
x < y
x <= y
x >= y
x > y
x == y # 검증시 = 2개
x != y # ! = 

# 논리연산자
!T
!F
x | y # or
# | 만드는 법 shift 백스페이스 밑 백슬래시
x & y # and
a <- c(F, F, T, T)
b <- c(F, T, F, T)
a | b # element-wise OR
a || b #첫번째 엘리먼트의 논리합
a & b
a && b

2^-3-5**1/2>2 # 2^(-3) - 5**(1/2) > 2 으로 쓸 것
