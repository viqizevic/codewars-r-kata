pillars = function(num_of_pillars, distance, width) {
  ifelse(num_of_pillars <= 1, 0,
         distance*100*(num_of_pillars-1) + width*(num_of_pillars-2))
}


pillars(1, 10, 10)
pillars(2, 20, 25)
pillars(11, 15, 30)