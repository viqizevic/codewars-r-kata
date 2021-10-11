human_years_cat_years_dog_years <- function(hy){
  years <- (hy - c(1, 2, 3)) >= 0
  c(
    hy,
    sum(c(15, 9, (hy-2)*4)[years]),
    sum(c(15, 9, (hy-2)*5)[years])
  )
}

human_years_cat_years_dog_years(1)
human_years_cat_years_dog_years(2)
human_years_cat_years_dog_years(10)