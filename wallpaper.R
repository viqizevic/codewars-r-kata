wallpaper <- function (l, w, h) {
  numbers <- c("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty")
  #k <- ceiling(2 * (w + l) * 100 / 52)
  #j <- ceiling(round(k * h * 100 * 1.15/ 1000, digits = 1))
  k <- ceiling(2 * (w + l) * h * 1.1)
  j <- ceiling(k / (10 * 0.52))
  if (min(l,w,h) == 0) j <- 0
  numbers[j+1]
  #k / (10 * 0.52)
  #2 * (w + l) * h * 1.15
}

wallpaper(4.0, 3.5, 3.0) # should return "ten"

wallpaper(0.0, 3.5, 3.0) # should return "zero"


wallpaper(4.4, 3, 2.75)
wallpaper(6.1, 6.7, 2.81)

wallpaper(5.894737, 4.7, 2.55 )#  "twelve"