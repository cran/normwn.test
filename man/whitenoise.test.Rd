\name{whitenoise.test}
\alias{whitenoise.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
whitenoise.test(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{ ~~who you are~~ }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(x)
 {
 # This programme performs the Lobato-Velasco white noise test 
 # Econometric Theory, Vol. 20, Issue 04, 2004
 n<- length(x)
 # compute acf function
 gam<- acf(x,type="covariance")
 # sample autocovariance at lag 0 is gam0
 gam0<- gam$acf[1]
 # compute periodogram of x
 ILAM<- spec.pgram(x,taper=0,fast=FALSE)
 ILAM<- ILAM$spec
 T<- length(ILAM)
 # compute CVM statistic MN
 P2<- (T^(-1))*(sum(ILAM^2))
 MN<- (P2/gam0^2)-1
 # compute test statistic tMN
 tMN<- sqrt(T)*(MN-1)
 print("no. of observations")
 print(n)
 print("T")
 print(T)
 print("CVM stat MN")
 print(MN)
 print("tMN")
 print(tMN)
 pval<- pnorm(tMN,mean=0,sd=2,lower.tail=FALSE)
 # 2 tail test against N(0,4)
 # H0 the data are white noise
 test<- pval*2
 if (test > 1) test<- 2-test
 print("test value")
 print(test)
 }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ htest }

