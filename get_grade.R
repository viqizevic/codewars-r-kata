get_grade <- function(a, b, c) {
  ind <- which(mean(c(a,b,c)) >= c(90, 80, 70, 60, 0), TRUE)[1]
  c('A', 'B', 'C', 'D', 'F')[ind]
}

get_grade(95, 90, 93)
get_grade(100, 85, 96)
get_grade(92, 93, 94)
get_grade(100, 100, 100)
get_grade(70, 70, 100)
get_grade(82, 85, 87)
get_grade(84, 79, 85)
get_grade(70, 70, 70)
get_grade(75, 70, 79)
get_grade(60, 82, 76)
get_grade(65, 70, 59)
get_grade(66, 62, 68)
get_grade(58, 62, 70)
get_grade(44, 55, 52)
get_grade(48, 55, 52)
get_grade(58, 59, 60)
get_grade(0, 0, 0)