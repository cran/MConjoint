\name{mc.despack.linear.conjoint}
\alias{mc.despack.linear.conjoint}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.despack.linear.conjoint
}
\description{
Given a list of designs and the data
find the coefficients of the linear fit for each
design and each column of data.
}
\usage{
mc.despack.linear.conjoint(despack, data = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{despack}{
   a design pack with the fields $cards. $designs and possibly $samps
}
  \item{data}{
     Each column consist of the ranks given to the m cards
     in despack$cards by a single subject.
}
}
\details{
The function will only work correctly if the sample, despack$samps[i]
correspond correctly to despack$desings[i]  (eg. the sample consists
of the corresponding row numbers from despack$cards).  If despack$samps is
null the the row names of despack$designs[i] are assumed to be 
the correct row numbers.  (in practice this is often true)
}
\value{
A despack is returned with the following fields filled

  \item{cards }{copy of despack$cards}
  \item{samps }{copy of despack$samps}
  \item{designs}{copy of despack$designs}
  \item{coeffs}{the calculated coefficients}

}

\author{
William Hughes
}

\examples{
data(hire.despack)
data(hire.data)
hire.despack=mc.despack.linear.conjoint(hire.despack,hire.data)
hire.despack$coeffs[[3]]
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

