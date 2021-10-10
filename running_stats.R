stat <- function (strg) {
  s <- strsplit(strg, ",\\s*") %>% unlist
  x <- s %>% sapply(function(t) {
    v <- strsplit(t, split = "\\|") %>% unlist %>% as.numeric
    (v * c(3600, 60, 1)) %>% sum
  })
  time2strg <- function(t) sprintf("%02d|%02d|%02d", t %/% 3600, t %% 3600 %/% 60, t %% 3600 %% 60)
  r <- c(max(x)-min(x), floor(mean(x)), median(x)) %>% sapply(time2strg)
  paste(c("Range", "Average", "Median"), r, sep = ": ", collapse = " ")
}


stat("01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17")
# "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34"
stat("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41")
# "Range: 00|31|17 Average: 02|26|18 Median: 02|22|00"