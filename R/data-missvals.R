#' @name missvals
#'
#' @aliases missvals
#'
#' @title
#' A multivariate data set with missing values.
#'
#' @description
#' The \code{missvals} data frame has 13 rows and 5 columns.
#' These are data from Draper and Smith (1966, ISBN:0471221708), and are included to
#' demonstrate Maximum Likelihood (ML) estimation of mean and variance-covariance parameters of
#' multivariate normal data when some observations are missing.
#'
#' @format
#' This data frame contains the following columns:
#' \describe{
#'   \item{x1,x2,x3,x4,x5}{
#'       numeric vectors
#'    }
#' }
#'
#' @source
#' Draper, N. R., and Smith, H. (1966) \emph{Applied Regression Analysis}. New York: Wiley, ISBN:0471221708.
#'
#' Little, R. J. A., and Rubin, D. B. (1987) \emph{Statistical Analysis with Missing Data}. New York: Wiley, ISBN:0471802549.
#'
#' Rubin, D. B. (1976)  Comparing regressions when some predictor variables are missing. \emph{Psychometrika} \bold{43}, 3--10, \doi{10.2307/1267523}.
#'
#' @examples
#' library(mvnmle)
#' data(missvals)
#'
#' mlest(missvals, iterlim = 400)
#'
#' @keywords datasets
"missvals"
