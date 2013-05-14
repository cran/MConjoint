\name{mc.mean.over.design.utils}
\alias{mc.mean.over.design.utils}
\alias{mc.mean.over.design.imps}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mean over design functions
}
\description{
Given the utilities or the importances calculate the average over all the designs
}
\usage{
mc.mean.over.design.utils(all.utils)

mc.mean.over.design.imps(all.imps)
}
\arguments{
  \item{all.utils}{
  A list of lists of utilities, one list for each design
}
  \item{all.imps}{
  A list of matrices of importances, one matrix for each design
}
}
\details{
note the average importances are not the importances calculated from the
average utilities
}
\value{

a list of utilities or a matrix of importances

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

mc.mean.over.design.utils(hire.despack$all.utils)
mc.mean.over.design.imps(hire.despack$all.imps)



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }
