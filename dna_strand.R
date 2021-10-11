DNA_strand <- function(dna){
  # CLEVER: chartr("ACGT", "TGCA", dna)
  dict <- list()
  dict["C"] <- "G"
  dict["A"] <- "T"
  dict["G"] <- "C"
  dict["T"] <- "A"
  dnas <- unlist(strsplit(dna, ""))
  for (i in 1:nchar(dna)) {
    dnas[i] <- dict[[dnas[i]]]
  }
  paste0(dnas, collapse="")
}