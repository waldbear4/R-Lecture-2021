# 숫자의 이상치
boxplot(airquality[, c(1:4)])
boxplot(airquality[, 1])$stats
boxplot(airquality$Ozone)$stats

air <- airquality
air$Ozone <- ifelse(air$Ozone < 1 | 
                        air>Ozone > 122,
                    NA, air$Ozone)
air

# or
air <- airquality
air$Ozone <- ifelse(air$Ozone<boxplot(airquality$Ozone)$stats[1] | 
                    air$Ozone>boxplot(airquality$Ozone)$stats[5], 
                    #IQR의 최대치
                    NA, air$Ozone)

air
sum(is.na(air$Ozone))
sum(is.na(airquality$Ozone))
mean(air$Ozone, na.rm = T)
mean(airquality$Ozone, na.rm = T)

