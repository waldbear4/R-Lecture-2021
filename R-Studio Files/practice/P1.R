s <- c(1, 2, 3, 4, 5, 6)
s2 <- c(1:6)
s3 <- c(6:1)
s4 <- 1:5
c(1:3, c(4:6))
c(1:30)
seq(1, 100, by=2)
seq(from=100, to=1, by=-3)
seq(0, 1, by=0.1)
seq(0, 1, length.out=15)
seq(0, 1, length.out=20)
seq(0, 1, length.out=25)

rep(c(1:3), times=2)
rep(c(1:5), times=4)

x <- seq(2,10, by=3)
x[1]
x[3]
x[-3]

x[1:3]

x <- c(1:4)
y <- c(5:8)
z <- c(3:4)
w <- c(5:7)

x + 2
x + y
x + z
x + w
length(w)

x > 2
all(x>2)
any(x>2)

x <- 1:3
y <- 3:5
z <- c(3,1,2)

union(x,y)
intersect(x,y)
setdiff(x,y)
setdiff(y,x)
setequal(x,y)
setequal(x,z)
