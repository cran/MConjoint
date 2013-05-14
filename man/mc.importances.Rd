\name{mc.importances}
\alias{mc.importances}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.importances
}
\description{
Given a despack with \code{$all.utils} filled, calculate the importances
}
\usage{
mc.importances(despack)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{despack}{
  a design package with \code{$all.utils} filled
}
}
\details{
Note that this function will only work if \code{despack$utils} is correctly
filled.  However, there is no requirement that the utilities come from
a linear fit.  The utilities are not checked against \code{despack$coeffs}
which may not exist.
}
\value{
   a despack with all fields unchanged except that
    $all.imps will be replaced by the list of matrices
    of calculated utilities


}
\author{
William Hughes
}

\examples{

data(hire.despack)
data(hire.data)
hire.despack=mc.despack.linear.conjoint(hire.despack,hire.data)
hire.despack=mc.despack.linear.utils(hire.despack)
hire.despack=mc.importances(hire.despack)
hire.despack$all.imps[12]
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

