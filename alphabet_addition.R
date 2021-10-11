add_letters <- function(s) {
  n <- sum(match(s, letters)) %% 26
  n <- ifelse(0 == n, 26, n)
  # intToUtf8(utf8ToInt('a') - 1 + n)
  letters[n]
}

add_letters(c('a', 'b', 'c'))
add_letters(c('a', 'z'))
add_letters(c('z'))
add_letters(c())