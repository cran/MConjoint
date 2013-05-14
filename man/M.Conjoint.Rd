\name{M.Conjoint}
\alias{M.Conjoint}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  M.Conjoint
}
\description{
Perform Conjoint Analysis by analyzing and averaging a number of designs
}
\usage{
M.Conjoint(despack, data, type = "linear")
}

\arguments{
  \item{despack}{
  A despack with $cards, $samps and $designs filled
}
   \item{data}{
   A matrix with each column the ranks given to \code{despack$cards}
  by one subject
}
  \item{type}{
  a string indicating the method to use.  Choose from \code{linear}
}
}
\details{
This is a wrapper.   It calls


\code{mc.despack.linear.conjoint(despack,data)}\cr
\code{mc.despack.linear.utils(despack)}\cr
\code{mc.importances(despack)}\cr
\code{mean.over.design.utils(despack$all.utils)}\cr
\code{mean.over.design.imps(despack$all.imps)}\cr

To populate \code{despack}

It then calculates and outputs the average utilities
and importances

}
\value{
A fully populated design package (invisible)
}

\author{
William Hughes
}
\examples{
data(hire.despack)
data(hire.data)
hire.despack=M.Conjoint(hire.despack,hire.data)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

