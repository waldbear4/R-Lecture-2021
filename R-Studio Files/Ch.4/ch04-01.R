# 파일 읽기
getwd()
students <- read.table('data/students1.txt', header = T)
students
str(students)

getwd()

# read.csv 는 첫 햇의 헤더로 읽는 것이 디폴트
students <- read.csv('data/students.csv')
students

# 파일 쓰기 - enconding 신경쓸 것
write.table(students, file = 'data/output.txt',fileEncoding = 'utf-8' )
write.csv(students, file = 'data/output.csv',fileEncoding = 'utf-8'  )

# row.names= F option 설정
write.table(students, file = 'data/output.txt',fileEncoding = 'utf-8', 
            row.names=F)
write.csv(students, file = 'data/output.csv', fileEncoding = 'utf-8',
          row.names = F)

# quote = F option ""사라짐
write.table(students, file = 'data/output.txt',fileEncoding = 'utf-8', 
            row.names=F, quote = F)
write.table(students, file = 'data/output.csv',fileEncoding = 'utf-8', 
            row.names=F, quote = F)

# 제대로 읽는지 확인
students <- read.table('data/output.txt', header = T, fill = T, 
                       fileEncoding = 'utf-8')
students

students <- read.table('data/output.csv', fileEncoding = 'utf-8')
students
str(students)

# 읽을 때 stringASFactors = F 로 하면 문자형을 범주형으로 읽지 않음
students <- read.csv('data/output.csv', fileEncoding = 'utf-8', 
                     stringsAsFactors = F)

students
