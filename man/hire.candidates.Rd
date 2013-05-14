\name{hire.candidates}
\alias{hire.candidates}
\docType{data}
\title{
All combinations of factors used for hiring
}
\description{
This is a full factorial (all combinations of factors) design.
}
\usage{data(hire.candidates)}
\format{
  A data frame with 24 observations on the following 4 variables.
  \describe{
    \item{\code{University}}{a factor with levels \code{Prestige} \code{Excellent} \code{Good}}
    \item{\code{Sex}}{a factor with levels \code{Male} \code{Female}}
    \item{\code{Dress}}{a factor with levels \code{smart} \code{messy}}
    \item{\code{Hair}}{a factor with levels \code{long} \code{short}}
  }
}
\details{
We have a toy Conjoint Analysis problem for examples.
We assume all hiring decisions are made on four
factors.  This is a data set with all 24 possible
combinations.
}

\examples{
data(hire.candidates)
}
\keyword{datasets}
