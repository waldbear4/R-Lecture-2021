# 데이터 프레임
name <- c('철수', '춘향', '길동')
age <- c(22, 20, 25)
gender <- factor(c('M', 'F', 'M'))
blood_type <- factor(c('A', 'O', 'B'))

patients <- data.frame(name, age, gender, blood_type)
patients

patients$name

patients[1, ]  # patients[1, 빈 칸] 첫번째 행의 전부
patients[2, ]
patients[ , 1] # patients[빈 칸, 1] 첫번째 열의 전부
patients[2, 3] # F
patients$gender[2]  #python 에서 더 많이 쓰는 방법 컬럼에서 찾기
patients[patients$name=='철수',] # patientsp[1,], filtering
patients[patients$name=='철수', c('age', 'gender')] #selection

# 데이터프레임 속성명을 변수명으로 사용 (attach ~ detach)
attach(patients)
name
blood_type
detach(patients)

head(cars)
attach(cars)
speed
detach(cars)
speed

mean(cars$speed)
max(cars$speed)
with(cars, mean(speed)) #cars 라는 데이터안에서, attach 랑 비스한 느낌

# subset
subset(cars, speed>20)
cars[cars$speed>20,]
subset(cars, speed>20, select = c(dist))
subset(cars, speed>20, select = c(-dist))

# 결측값 (NA) 처리 
# 데이터값에 결측치가 있으면 모든게 결측이 되어버림으로 결측값을 정리를 해줘야함
head(airquality)
str(airquality)
sum(airquality)
sum(airquality$Ozone)

# 결측치 수가 많은 경우 = 전부 날려버린다
# 결측치 수가 적은 경우 = 결측치만 제거
# 대표값, 평균값, 중앙값, 최빈값 등으로 대체

head(na.omit(airquality)) # 결측치를 포함한 행을 제거하고 보여줌

# 병합(merge)
patients
patients1 <- data.frame(name, age, gender)
patients2 <- data.frame(name, blood_type)

merge(patients1, patients2, by='name')
?merge 

# 데이터프레임 행 추가 
length(patients1)

patients1[length(patients1$name)+1,] <- c('몽룡', 19, 'M')
patients1

patients2[length(patients2$name)+1,] <- c('영희', 'A')

patients2

# 열추가
patients1['birth_year'] <- c(1500, 1550, 1600, 1800)
patients1

# merge
# inner join
merge(patients1, patients2)
# left outer join
merge(patients1, patients2, all.x = T)
# right outer join
merge(patients1, patients2, all.y = T)
# Full outer join
merge(patients1, patients2, all.x = T, all.y = T)
