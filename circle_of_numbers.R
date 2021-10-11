circle_of_numbers <- function(n, first_number) {
  (first_number + n/2) %% n
}

circle_of_numbers(10, 2)
circle_of_numbers(6, 3)