estpabin <- function(vec) {
  vec <- round(vec)
  m <- length(vec)
  freq <- table(vec)
  freq <- as.numeric(freq/m)
  return(freq)

}