\name{apple}
\alias{apple}
\title{Worm Infestations in Apple Crops}
\description{
The \code{apple} data frame provides the number of apples (in 100s) on
18 different apple trees.  For 12 trees, the percentage of apples with
worms (x 100) is also given.
}
\format{
    This data frame contains the following columns:
    \describe{
    \item{size}{hundreds of apples on the tree.}
    \item{worms}{percentage (x100) of apples harboring worms.}
  }
}
\details{
    These data constitute Table 6.1 in Little and Rubin (1987), adapted from Table 6.9.1 of
    Snedecor and Cochran (1967).
}
\source{
 Little, R. J. A., and Rubin, D. B. (1987) \emph{Statistical Analysis
     with Missing Data}.  New York: Wiley.
 
 Snedecor, G. W., and Cochran, W. G.  (1967)  \emph{Statistical
     Methods}, 6th ed.  Ames: Iowa State University Press.
}
\examples{
library(mvnmle)
data(apple)

mlest(apple)
}
\keyword{datasets}






