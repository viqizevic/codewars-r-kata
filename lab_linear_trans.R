lab_linear_trans <- function(value, invhi, invlo, refhi, reflo) {
  reflo + ((value - invlo)/(invhi - invlo)) * (refhi - reflo)
}

lab_linear_trans(23, 33, 0, 35, 0)
lab_linear_trans(3, 21, 0, 17, 0)
lab_linear_trans(70, 20.6, 39.9, 22.1, 34.1)
lab_linear_trans(7, 5.1, 3.3, 5.0, 3.5)
