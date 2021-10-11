intRac <- function(n, guess, k=0) {
  newg <- floor((guess + n/guess) / 2)
  if (abs(guess-newg) < 1) return(k+1)
  return(intRac(n, newg, k+1))
}


intRac(25,1) # follows a progression of [1,13,7,5] => 4.

intRac(125348,300) # has a progression of [300,358,354] => 3.

intRac(828061341209011, 1)