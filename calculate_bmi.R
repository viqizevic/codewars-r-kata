bmi <- function(weight, height) {
  bmival <- weight / (height**2)
  if      (bmival <= 18.5) return("Underweight")
  else if (bmival <= 25.0) return("Normal")
  else if (bmival <= 30.0) return("Overweight")
  else                     return("Obese")
}

bmi(80.0, 1.80)