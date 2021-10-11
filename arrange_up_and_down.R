arrange <- function(s) {
  z <- strsplit(s, ' ') %>% unlist
  l <- length(z)
  if (0 == l) return(s)
  for(i in seq.int(2,l,1)) {
    should_up <- ((i %% 2) == 0)
    is_going_down <- nchar(z[i-1]) > nchar(z[i])
    is_going_up <- nchar(z[i-1]) < nchar(z[i])
    if ((should_up & is_going_down) | (!should_up & is_going_up)) {
      temp <- z[i-1]
      z[i-1] <- z[i]
      z[i] <- temp
    }
  }
  z[seq.int(1,l,2)] <- tolower(z[seq.int(1,l,2)])
  z[seq.int(2,l,2)] <- toupper(z[seq.int(2,l,2)])
  paste0(z, collapse = ' ')
}

arrange("who hit retaining The That a we taken") # "who RETAINING hit THAT a THE we TAKEN"
arrange("on I came up were so grandmothers") # "i CAME on WERE up GRANDMOTHERS so"
arrange("way the my wall them him") # "way THE my WALL him THEM"