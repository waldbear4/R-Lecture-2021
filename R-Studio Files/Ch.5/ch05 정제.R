# 데이터 정제
score <- read.csv('data/students2.csv')
score

 for (i in 2:4) {
    score[, i] <- ifelse(score[,i]>100|score[,i]<0, NA, score[,i])
}
score

# 결측값처리
# is,na
# na.omit

head(airquality)
sum(is.na(airquality)) #44
table(is.na(airquality))

sum(is.na(airquality$Temp))
mean(airquality$Temp)

sum(is.na(airquality$Ozone)) # 37
mean(airquality$Ozone)
mean(airquality$Ozone, na.rm = T) # NA를 배제하고 T 를 구하라

# 결측값 제거
air_narm <- na.omit(airquality)
sum(is.na(air_narm))

# 결측값 대체
airquality$Ozone <- replace(airquality$Ozone, # 바꿀려는 값
                            is.na(airquality$Ozone),
                            mean(airquality$Ozone, na.rm = T))
                                #위의 mean 값으로 바꿈
head(airquality)
#head 오존 5행 NA 42. 어쩌구로 바뀌어야함

# 쏠라빔 NA 를 중간값으로 변환 median
airquality$Solar.R <- replace(airquality$Solar.R,
                              is.na(airquality$Solar.R),
                              median(airquality$Solar.R, na.rm = T))
head(airquality)

# 이상값 (outlier) 처리
patients <- data.frame(name = c('1환','2환','3환','4환','5환'),
                       age=c(22,20,25,30,27),
                       gender=factor(c("M","F","M","K","F")),
                       blood_type=factor(c("A", "O", "B", "AB", "C")))
patients
table(patients$gender)

# 성별의 이상치 제거
patients_outrm <- patients[patients$gender == 'M' | patients$gender == 'F',]
patients_outrm

# 혈액형 이상치 제거
patients_outrm <- patients[patients$blood_type == 'A'|
                               patients$blood_type == 'B'|
                               patients$blood_type == 'O'|
                               patients$blood_type == 'AB',]

patients_outrm

# 성별과 혈액형 이상치 제거
patients_outrm <- patients[patients$gender == 'M'| 
                           patients$gender == 'F'&
                           patients$blood_type == 'A'|
                           patients$blood_type == 'B'|
                           patients$blood_type == 'O'|
                           patients$blood_type == 'AB',]
patients_outrm

patients_outrm <- patients[patients$gender %in% c('M', 'F') &
                patients$blood_type %in% c('A', 'B', 'O', 'AB'), ]
patients_outrm


# 이상치를 NA로 대체
patients$gender <- ifelse(patients$gender %in% c('M', 'F'),
                          patients$gender, NA)
patients

patients$blood_type <- ifelse(patients$blood_type %in% c('A', 'B', 'AB', 'O'),
                          patients$gender, NA)
patients


# 대체2
patients2 <- data.frame(name = c('1환','2환','3환','4환','5환'),
                       age=c(22,20,25,30,27),
                       gender=factor(c("M","F","M","K","F")),
                       blood_type=c("A", "O", "B", "AB", "C"))
patients2$gender <- ifelse(patients2$gender %in% c('M','F'),
                           patients2$gender, NA)
patients2$blood_type <- ifelse(patients2$blood_type %in% c('A', 'B', 'O', 'AB')
                               patients2$blood_type, NA)
patients2


# 숫자의 이상치
b