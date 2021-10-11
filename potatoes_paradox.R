potatoes <- function (p0, w0, p1) {
  # p0/100 = 1 - wd/w0
  # => wd = w0 * (1 - p0/100)
  # p1/100 = 1 - wd/w1
  # => wd = w1 * (1 - p1/100)
  # => w1 = w0 * (1 - p0/100) / (1 - p1/100)
  floor(w0 * (100 - p0) / (100 - p1))
}

potatoes(99, 100, 98)   # --> 50
potatoes(82, 127, 80)   # --> 114

potatoes(99.99, 1000, 99.98)
potatoes(82, 173, 77)
potatoes(75, 96, 70)
