spoonerize <- function(words) {
  wo <- unlist(strsplit(words,' '))
  se <- paste0(substr(wo[1],1,1), substring(wo[2],2))
  fi <- paste0(substr(wo[2],1,1), substring(wo[1],2))
  paste0(fi, ' ', se)
}

spoonerize("nit picking")