\name{mc.despack.linear.utils}
\alias{mc.despack.linear.utils}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.despack.linear.utils
}
\description{
Calculate the utilities from the linear fit coefficients
}
\usage{
mc.despack.linear.utils(despack)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{despack}{
    a despack with $coeffs filled
}
}

\value{
    a despack with all fields unchanged except that
    $all.utils will be replaced by the list of lists
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
hire.despack$all.utils[[3]][[2]]

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate}

