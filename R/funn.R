funn<-function(a){
fun.src <- '
Environment stats("package:mrmr");
Function estpab = stats["estpab"];
Rcpp::NumericVector xa(a);

return xa;
'
fun.test <- cxxfunction(signature(a = "numeric"),fun.src, plugin = "Rcpp")
fun.test(a)

}
remove.packages("mrmr")
library(Rcpp)
setwd("D:/")
Rcpp.package.skeleton( "mrmr" )

getwd()
