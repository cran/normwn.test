\name{normality.test1}
\alias{normality.test1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Omnibus Normality Test under Independence}
\description{
 Performs the Doornik-Hansen (1994) omnibus test for normality
}
\usage{
normality.test1(x)
}
\arguments{
  \item{x}{input matrix by row n (observations) and column p (variables)}
}
\details{
  In the univariate case, the input matrix is row n (observations) by 1
}
\value{
  A list with class \code{htest} containing the following components:
\item{sk}{skewness statistics}
\item{k}{kurtosis statistics}
\item{rtb1}{skewness of standardized variables}
\item{b2}{kurtosis of standardized variables}
\item{z1}{skewness of transformed variables}
\item{z2}{kurtosis of transformed variables}
\item{pvalsk}{p-values under null of no skewness}
\item{pskneg}{p-values under null of no negative skewness}
\item{ppskpos}{p-values under null of no positive skewness}
\item{pvalk}{p-values under null of no kurtosis}
\item{pkneg}{p-values under null of no negative kurtosis}
\item{pkpos}{p-values under null of no positive kurtosis}
\item{Ep}{value of normality test statistic}
\item{dof}{degrees of freedom}
\item{Sig.Ep}{significance of normality test statistic}}

\references{Doornik, J.A, and H. Hansen (1994). "An Omnibus Test for Univariate and Multivariate Normality. Working Paper, Nuffield College, Oxford, U.K. }
\author{Peter Wickham}
\note{The test is designed to deal with small samples rather than the asymptotic version commonly-known
      as the Jarque-Bera test.
}
\seealso{normality.test2}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest }

