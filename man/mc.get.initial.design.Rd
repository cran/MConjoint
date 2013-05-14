\name{mc.get.initial.design}
\alias{mc.get.initial.design}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.get.initial.design
}
\description{
Given a set of cards, determine an initial design
including extra cards.
}
\usage{
mc.get.initial.design(full.design, cards = NULL, extra.cards = 3, slack = 1, tol = 0.2,
                      max.trials = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{full.design}{
      All cards (combinations of levels) that are deemed possible
}
  \item{cards}{
      The number of cards in the base design.  If this is null then the minimum possible
      number of cards + 3 (to allow for model fit issues) is used.
}
  \item{extra.cards}{
      The number of extra cards added to the base design
}
  \item{slack}{
   How much the number of each factor can vary in a "good" design
}
  \item{tol}{
The largest cross correlation in a "good" design  
}
  \item{max.trials}{
The maximum number of samples of extra.cards cards
to look at.
}
}
\details{
This can be slow for big designs  (lots of samples, a long time testing each one).
You can set max.trials to limit
the length of time the function runs.  It will use the best sample
it has seen.

For finer control call \code{mc.get.one.design} and \code{mc.add.to.design}
separately.
}
\value{
A design  with cards + extra.cards rows
}
\author{
William Hughes
}
\seealso{
\code{\link{mc.get.one.design}}, \code{\link{mc.add.to.design}}
}
\examples{
data(hire.candidates)

#default except max.trials=10 for speed

hire.questionaire = mc.get.initial.design(hire.candidates,max.trials=10)

#A base design of 10 cards with 5 extra cards and good cross correlations less than .17
#takes about 10 seconds

#hire.questionaire = mc.get.initial.design(hire.candidates,cards=10,extra.cards=5,tol=.17)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

