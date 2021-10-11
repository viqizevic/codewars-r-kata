update_light <- function(current){
  lights <- c('green', 'yellow', 'red')
  lights[which(lights == current) %% 3 + 1]
}



update_light('green')
update_light('yellow')
update_light('red')