how_many_dalmatians <- function( n ) {
  if (n == 101) {
    return("101 DALMATIANS!!!")
  } else if (n < 10) {
    return("Hardly any")
  } else if (n < 50) {
    return("More than a handful!")
  }
  return("Woah that's a lot of dogs!")
}


how_many_dalmatians(26)
how_many_dalmatians(8)
how_many_dalmatians(100)
how_many_dalmatians(101)