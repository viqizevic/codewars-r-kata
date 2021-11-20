generate_shape <- function(n){
  r <- paste(rep('+', n), collapse='')
  paste(rep(r, n), collapse='\\n')
}

generate_shape(3)