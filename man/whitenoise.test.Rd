\name{whitenoise.test}
\alias{whitenoise.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Univariate Test for White Noise}
\description{
 Performs an univariate test for white noise. The null is "white noise" rather than "strict white noise" which permits weak dependence in the higher moments of a variable 
}
\usage{
whitenoise.test(x)
}
\arguments{
  \item{x}{the input is a vector of length n (observations) or an n by 1 matrix}
}
\details{
  A von Mises-type statistic is computed to be valued against a N(0,4) distribution. Finite sample test statistics are thus easily generated.
}
\value{A list with class \code{htest} containing the following components:
\item{n}{ no. of observations}
\item{T}{length of periodogram used}
\item{MN}{von Mises statistic}
\item{tMN}{test statistic}
\item{test value}{p-value for the test}
 }
\references{I. Lobato and C. Velasco (2004). "A Simple and General Test for White Noise". Econometric Society, Latin-American Meetings, paper No. 112}
\author{Peter Wickham}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ htest }

