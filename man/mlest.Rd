\name{mlest}
\alias{mlest}
\title{ML Estimation of Multivariate Normal Data}
\description{
  Finds the maximum likelihood estimates of the mean vector and
  variance-covariance matrix for multivariate normal data with
  (potentially) missing values.
}
\usage{
mlest(data, ...)
}
\arguments{
  \item{data}{A data frame or matrix containing multivariate normal
      data.  Each row should correspond to an observation, and each
      column to a component of the multivariate vector.  Missing values
      should be coded by 'NA'.}
  \item{\dots}{Optional arguments to be passed to the nlm optimization routine.}
}
\details{
  The estimate of the variance-covariance matrix returned by
  \code{mlest} is necessarily positive semi-definite.  Internally,
  \code{nlm} is used to minimize the negative log-likelihood, so
  optional arguments mayh be passed to \code{nlm} which modify the
  details of the minimization algorithm, such as \code{iterlim}.  The
  likelihood is specified in terms of the inverse of the Cholesky factor
  of the variance-covariance matrix (see Pinheiro and Bates 2000).

  \code{mlest} cannot handle data matrices with more than 50 variables.
  Each varaible must also be observed at least once.
}
\value{

  \item{muhat}{MLE of the mean vector.}
  \item{sigmahat}{MLE of the variance-covariance matrix.}
  \item{value}{The objective function that is minimized by \code{nlm}.
      Is is proportional to twice the negative log-likelihood.}
  \item{gradient}{The curvature of the likelihood surface at the MLE, in
      the parameterization used internally by the optimization
      algorithm.  This parameterization is: mean vector first, followed
      by the log of the diagonal elements of the inverse of the Cholesky
      factor, and then the elements of the inverse of the Cholesky
      factor above the main diagonal.  These off-diagonal elements are
      ordered by column (left to right), and then by row within column
      (top to bottom).}
  \item{stop.code}{The stop code returned by \code{nlm}.}
  \item{iterations}{The number of iterations used by \code{nlm}.}
     
}
\references{
 Little, R. J. A., and Rubin, D. B. (1987) \emph{Statistical Analysis
     with Missing Data}.  New York: Wiley.
 
 Pinheiro, J. C., and Bates, D. M.  (1996) Unconstrained
     parametrizations for variance-covariance matrices.
     \emph{Statistics and Computing} \bold{6}, 289--296.
     
 Pinheiro, J. C., and Bates, D. M.  (2000) \emph{Mixed-effects models in
     S and S-PLUS}.  New York: Springer.
}

\seealso{  \code{\link{nlm}} }

\examples{
library(mvnmle)

data(apple)
mlest(apple)

data(missvals)
mlest(missvals, iterlim=400)

}
\keyword{multivariate}






