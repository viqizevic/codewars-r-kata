switcheroo <- function(string){
  chartr("ab", "ba", string)
}

switcheroo("abc")               # --> "bac"
switcheroo('aaabcccbaaa')       # --> 'bbbacccabbb'
switcheroo('ccccc')             # --> 'ccccc'
switcheroo('abababababababab')  # --> 'babababababababa'
switcheroo('aaaaa')             # --> 'bbbbb'
