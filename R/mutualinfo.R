mutualinfo <- function(vec1,vec2) {
  vec1 <- round(as.numeric(vec1))
  vec2 <- round(as.numeric(vec2))
  m <- length(vec1)
  n <- length(vec2)
  if (m!=n){
    print("the two input vector length differ")
    return(0)
  }
  else{
    vec<-paste(vec1,vec2)
    freq1 <- estpab(vec1)
    freq2 <- estpab(vec2)
    freq12<- estjointpab(vec1,vec2)
    mutual <- sum(apply(freq2,1,fun2,freq1=freq1,freq12=freq12))/log(2)
    return (mutual)
  }
}

fun1 <- function(freq1,freq2,freq12){
  temploc = which(freq12==paste(freq1[1],freq2[1]))
  if(sum(temploc)){
    temp <- as.numeric(freq12[temploc,2])*log(as.numeric(freq12[temploc,2])/as.numeric(freq1[2])/as.numeric(freq2[2]))
    return (temp)
  }
  else return(0)
}

fun2 <- function(freq1,freq2,freq12){
  temp <- apply(freq1,1,fun1,freq2=freq2,freq12=freq12)
  return (temp)
}