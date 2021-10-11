number <- function(lines) {
  if (length(lines) > 0) {
    li = vector(length = length(lines))
    for (i in 1:length(lines)) {
      li[i] <- paste0(i,": ",lines[i])
    }
    return(li)
  } else return(lines)
  # CLEVER: paste0(1:length(lines), ": ", lines)
}


number(c())
number(c("a", "b", "c"))
number(c("", "", "", "", ""))
number(c("", "b", "", "", ""))