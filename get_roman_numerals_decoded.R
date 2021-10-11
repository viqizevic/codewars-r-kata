solution <- function(roman){
  s <- c(I=1, V=5, X=10, L=50, C=100, D=500, M=1000)[roman %>% strsplit('') %>% unlist]
  lower <- c(diff(s) > 0, FALSE)
  sum(s[!lower]) - sum(s[lower])
}

solution_first <- function(roman){
  # BUILT-IN solution: as.roman(roman) %>% as.integer
  romanLookup <- c(I=1, V=5, X=10, L=50, C=100, D=500, M=1000)
  r <- roman %>% strsplit('') %>% unlist
  if (length(r) == 1) return(sum(romanLookup[r]))
  # p and q for checking if the character in i-th position has a lower value than the next character
  p <- r[c(1:(length(r)-1))]
  q <- r[c(2:length(r))]
  lower <- (romanLookup[p] - romanLookup[q]) < 0 # if lower than need to substract from the total
  lower <- c(lower, FALSE) # last one always to be added
  sum(romanLookup[r[!lower]]) - sum(romanLookup[r[lower]])
}




solution('MMIX')
solution('MMXXI')
solution('IX')
solution('X')