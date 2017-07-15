\name{mutualinfo}
\alias{mutualinfo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
mutualinfo(vec1, vec2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vec1}{
%%     ~~Describe \code{vec1} here~~
}
  \item{vec2}{
%%     ~~Describe \code{vec2} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (vec1, vec2) 
{
    vec1 <- round(as.numeric(vec1))
    vec2 <- round(as.numeric(vec2))
    m <- length(vec1)
    n <- length(vec2)
    if (m != n) {
        print("the two input vector length differ")
        return(0)
    }
    else {
        vec <- paste(vec1, vec2)
        freq1 <- estpab(vec1)
        freq2 <- estpab(vec2)
        freq12 <- estjointpab(vec1, vec2)
        n1 <- nrow(freq1)
        n2 <- nrow(freq2)
        mutuinfo = 0
        for (i in 1:n1) {
            for (j in 1:n2) {
                temploc = which(freq12 == paste(freq1[i, 1], 
                  freq2[j, 1]))
                if (sum(temploc)) {
                  temp = freq12[temploc, 2] * log(freq12[temploc, 
                    2]/freq1[i, 2]/freq2[j, 2])
                  mutuinfo = mutuinfo + temp
                }
                else {
                  next
                }
            }
        }
        return(mutuinfo/log(2))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
