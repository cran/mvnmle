\name{missvals}
\alias{missvals}
\non_function{}
\title{A multivariate data set with missing values.}
\description{
The \code{missvals} data frame has 13 rows and 5 columns.
These are data from Draper and Smith (1968), and are included to
demonstrate ML estimation of mean and variance-covariance parameters of
multivaraite normal data when some observations are missing.
}
\format{
This data frame contains the following columns:
\describe{
\item{x1--x5}{
numeric vectors
}
}
}
\details{
 These data constitute Table 6.4 in Little and Rubin (1987).  They are analyzed both in Rubin (1976) and Little and Rubin (1987).
}
\source{
 Draper, N. R., and Smith, H.  (1968).  \emph{Applied Regression
     Analysis}.  New York: Wiley.
 
 Little, R. J. A., and Rubin, D. B. (1987) \emph{Statistical Analysis
     with Missing Data}.  New York: Wiley.
 
 Rubin, D. B.  (1976)  Comparing regressions when some predictor
     variables are missing.  \emph{Psychometrika} \bold{43}, 3--10.
}
\examples{

library(mvnmle)
data(missvals)

mlest(missvals, iterlim=400)
}
\keyword{datasets}
