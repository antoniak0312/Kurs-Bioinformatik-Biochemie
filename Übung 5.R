text <- "ACGTTGCATGTCGCATGATGCATGAGAGCT"
#pattern <- "GCA"


countPattern <- function(text, pattern){
  k <- nchar(pattern)
  count <- 0
for (i in 1:(nchar(text)-k)){
  if (substr(text,i,i+k-1) == pattern){
    count <- (count+1)
    } 
}
return(count)}

#countPattern(text, pattern)

frequentWords <- function(text, k){
  frequentPatterns <- c()
  counts <- c()
  for (i in 1:(nchar(text)-k)) {
    pattern <- substr(text, i, i+k-1)
    counts <- c(counts, countPattern(text, pattern))
  }
  maxCount <- max(counts)
  
  for (i in 1:(nchar(text)-k)) {
    if (counts[i] == maxCount) {
      frequentPatterns <- c(frequentPatterns, substr(text, i, i+k-1))
    }
  }
  return(unique(frequentPatterns))
}

frequentWords(text, 1)
frequentWords(text, 2)
frequentWords(text, 3)
frequentWords(text, 4)
frequentWords(text, 5)
