#' Simulate Values
#'
#' A function used for
#'
#' @param n numeric value for number of values to be returned
#' @param dist string value of distribution to sample from
#' @param ... additional arguments for defining distributions. These
#' include: normal (mean, sd), poisson (lambda) and binomial (size, prob)
#'
#' @return Vector of simulated values
#'
#' @examples
#' sim_values(10, "Normal", mean = 5)
#'
#' @export
sim_values <- function(n, dist = "Normal", ...) {
  if (tolower(dist) == "normal") {
    mean <- list(...)$mean
    sd <- list(...)$sd
    if (is.null(mean)) {
      mean <- 0
    }
    if (is.null(sd)) {
      sd <- 1
    }
    stats::rnorm(n, mean, sd)
  }
  else if (tolower(dist) == "poisson"){
    lambda <- list(...)$lambda
    if (is.null(lambda)) {
      lambda <- 1
    }
    stats::rpois(n, lambda)
  }
  else if (tolower(dist) == "binomial") {
    size <- list(...)$size
    prob <- list(...)$prob
    if (is.null(size)) {
      size <- 10
    }
    if (is.null(prob)) {
      prob <- 0.5
    }
    stats::rbinom(n, size, prob)
  }
}
