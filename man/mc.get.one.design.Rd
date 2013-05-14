\name{mc.get.one.design}
\alias{mc.get.one.design}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.get.one.design
}
\description{
Get a single "good" design from a list of cards
}
\usage{
mc.get.one.design(all.cards, cards, slack = 1, tol = 0.2, max.tries = 1e+06)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{all.cards}{
The set of cards from which the design is to be drawn
}
  \item{cards}{
The number of cards in the design.
}
  \item{slack}{
 How much the number of each factor level can vary in a "good" design
}
  \item{tol}{
The largest cross correlation in a "good" design
}
\item{max.tries}{
The maximum number of designs to look at.
}
}
\details{
Take samples of size \code{cards} from \code{all.cards} to form designs.
Check each of the designs to see if it is "good".  Return the first
good design found.  (This is one very simple way of getting a design
to start with.  Alternatively you could use a classical design
(e.g. a fractional factorial design) or an "optimal" design as
produced by the \pkg{AlgDesign} package).
}
\value{
A single design
or NULL and an error message if no design is found
}
\author{
William Hughes
}
\examples{
data(hire.candidates)

#get a nine card design
mc.get.one.design(hire.candidates,9)

#get a 15 card design with cross correlations less that .1
mc.get.one.design(hire.candidates,15,tol=.1)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

