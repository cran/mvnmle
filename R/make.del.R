#' @name make.del
#'
#' @aliases make.del
#'
#' @title Make the upper triangular matrix del from a parameter vector
#'
#' @description
#' \code{make.del} takes a parameter vector of length \eqn{k*(k+1)/2} and
#' returns the upper triangular \eqn{k \times k} matrix \eqn{\Delta}.
#' \code{make.del} is a private function intended for use inside \code{mlest}.
#'
#' @param pars A length \eqn{k*(k+1)/2} numerical vector giving the elements of \eqn{\Delta}.
#'
#' @details
#' The first \eqn{k} elements of \code{pars} are the log of the diagonal
#' elements of \eqn{\Delta}. The next \eqn{k*(k-1)/2} elements are the
#' elements above the main diagonal of \eqn{\Delta}, ordered  by column
#' (left to right), and then by row within column (top to bottom).  That
#' is to say, if \eqn{\Delta_{ij}} is the element in the \eqn{i}th row
#' and \eqn{j}th column of \eqn{\Delta}, then the order of the parameters
#' is \eqn{\Delta_{11}, \Delta_{22}, \ldots, \Delta_{kk}, \Delta_{12},
#' \Delta_{13}, \Delta_{23}, \Delta_{14}, \ldots,\Delta_{(k-1)k}}.
#'
#' @returns
#' An upper triangular \eqn{k \times k} matrix.
#'
#' @references
#' Pinheiro, J. C., and Bates, D. M. (2000) \emph{Mixed-effects models in S and S-PLUS}. New York: Springer, ISBN:1441903178.
#'
#' @seealso \code{\link{mlest}}
#'
#' @keywords algebra
#'
#' @export
make.del <- function(pars){
  # Takes a parameter vector with log of diagonal elements first
  # and then elements above diagonal in column-descending order
  # and fills in the zeros to make an upper-triangular matrix
  k <- floor((-1 + sqrt(1 + 8 * length(pars))) / 2)
  mymatrix <- diag(exp(pars[1:k]))
  pars <- pars[-(1:k)]
  if(k > 1){
    for(i in 2:k){
      mymatrix[1:(i-1), i] <- pars[1:(i-1)]
      pars <- pars[-(1:(i-1))]
    }
  }
  mymatrix
}

