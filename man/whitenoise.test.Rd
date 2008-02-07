\name{whitenoise.test}
\alias{whitenoise.test}
\title{ Univariate Test for White Noise }
\description{
  Performs a univariate test for white noise. The null is white noise rather than "strict" white noise which permits weak dependence in the higher moments of the variable}
\usage{whitenoise.test(x)} 
\arguments{ \item{x}{the input is a vector of length n (observations) or a n by 1 matrix}}
\details{
  A von Mises-type statistic is computed to be valued against a   N(0,4) distibution. Finite sample test statistics are thus easily generated. These can be requested from the author based on 5,000 replications. 
}
\value{ A list with claas \code{htest} containing the following components:
  \item{n}{no. of observations}
  \item{T}{length of periodogram used}
  \item{MN}{von Mises statistic}
  \item{tMN}{test statistic}
  \item{test value}{p-value for the test}}
\references{ Lobato, I., and C. Velasco (2004). "A Simple and General Test for White Noise". Econometric Society, Latin-America Meetings, Paper No. 112}
\author{ Peter Wickham }
\note{ }
\seealso{}
\examples{
}



% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest }
\keyword{ }% __ONLY ONE__ keyword per line
