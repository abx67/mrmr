DR <- function(fea,f,data){
  newdata=data[,fea]
  Dall=apply(newdata,2,mutualinfo,vec2=f)
  Dmean=mean(Dall)
  Rall=apply(newdata,2,Rone,data=newdata)
  Rmean=mean(Rall)
  #if you want to delete self mutualinfo
  # Rsum=sum(Rall)-sum(diag(Rall))
  # Rnum=ncol(Rall)*(nrow(Rall)-1)
  # Rmean=Rsum/Rnum
  
  return(Dmean-Rmean)
}

Rone <- function(vec,data){
  Rone=apply(data,2,mutualinfo,vec2=vec)
  return(Rone)
}
