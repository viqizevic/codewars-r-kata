fly_by <- function(lamps, drone){
  n <- nchar(drone)
  substr(lamps, 1, n) <- chartr('x','o',substr(lamps, 1, n))
  lamps
}

fly_by('xxxxxx', '====T')