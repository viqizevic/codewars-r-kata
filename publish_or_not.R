well <- function(x){
  cg <- sum(x == 'good')
  ifelse(cg == 0, 'Fail!', ifelse(cg <= 2, 'Publish!', 'I smell a series!'))
}


well(c('bad', 'bad', 'bad'))  # --> 'Fail!'
well(c('good', 'bad', 'bad', 'bad', 'bad'))  # --> 'Publish!'
well(c('good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good'))  # --> 'I smell a series!'
