growing_plant <- function(up_speed, down_speed, height) {
  # (day-1) * up + up - (day-1) * do >= h
  # (day-1) * (up - do) >= h - up
  # day >= (h - up) / (up - do) + 1
  ceiling(max(0,(height - up_speed)/(up_speed - down_speed)) + 1)
}

growing_plant(100, 10, 910)   # => 10
growing_plant(10, 9, 4)       # =>  1
growing_plant(5, 2, 0)        # =>  1
growing_plant(5, 2, 5)        # =>  1
growing_plant(5, 2, 6)        # =>  2