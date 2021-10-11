sabb <- function(s, val, happiness){
  w <- c('s', 'a', 'b', 't', 'i', 'c', 'l')
  sabbcount <- function(x) {
    t <- val + happiness + sum(unlist(strsplit(tolower(x),'')) %in% w)
    ifelse(t > 22, "Sabbatical! Boom!", "Back to your desk, boy.")
  }
  lapply(s, sabbcount) %>% unlist
}

sabb("Can I have a sabbatical?", 5, 5)

sabb(c("l", "l", "o", " ", "p", "m", "t", "c", "h", "b", "c", "n", "s", "e", "l", "i", "a", "b", "j", "d", "f"), 1, 5)


