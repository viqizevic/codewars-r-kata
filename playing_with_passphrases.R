playPass <- function(s, n) {
  v <- c(1:nchar(s))
  x <- unlist(strsplit(s,''))
  y <- match(x, LETTERS)
  # Do shift by n
  alph <- grepl("[A-Z]", x)
  w <- y[alph]+n
  w[w>26] <- w[w>26]-26
  x[alph] <- LETTERS[w]
  # Replace digits by complement
  dgt <- grepl("\\d", x)
  z <- rep_len(9, length.out=sum(dgt)) - as.numeric(x[dgt])
  x[dgt] <- as.character(z)
  # Downcase each in odd pos
  x[v%%2==0] <- tolower(x[v%%2==0])
  # Reverse
  paste(rev(x), collapse='')
}

playPass("YYYZZZ", 1)