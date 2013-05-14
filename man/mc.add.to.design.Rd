\name{mc.add.to.design}
\alias{mc.add.to.design}
\alias{mc.add.to.design.fast}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add cards to a design
}
\description{
Given a "good" design add some cards to get a new design
}
\usage{
mc.add.to.design(all.possible, old.design, cards.to.add = 3, slack = 1, 
                 tol = 0.2, max.trials = 100, max.good.designs=100)

mc.add.to.design.fast(all.possible, old.design, cards.to.add = 3, slack = 1, tol = 0.2)
}

\arguments{
  \item{all.possible}{
all possible cards  (can be all combinations
of factors, or some can be removed)
}
  \item{old.design}{
An initial "good" design
}
  \item{cards.to.add}{
the number of cards to add
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
  \item{max.good.designs}{
For any trial design, the maximum number of good
designs to look for
}
}
\details{
The function will take samples of size extra.cards
from the set of cards all.possible-old.design
and add them to old.design.  For each sample the 
number of "good" (balanced an low cross correlation)
designs of the same size as
old.design is found.  The sample which gives the largest
number of "good" designs is used.

The default \code{max.trials} of 100 will lead to run times
of several hours for largish problems.  You can usually
decrease this without losing too much.  Increasing the
number of trials may increase the number of good
designs found, but usually not by much.

The default \code{max.good.designs} is set to 100.
Analyzing more than this number of designs is
unlikely to be needed outside of theoretical work.

mc.add.to.design.fast is useful for quick and dirty
work


}
\value{
  \item{base.design }{The original old.design}
  \item{added}{The sample of cards added}
  \item{design}{The combined set of cards randomized}

}

\author{
William Hughes
}



\examples{
data(hire.candidates)
base.design = mc.get.one.design(hire.candidates, 9)

#use defaults, (except max.trials=10 for speed)

mc.add.to.design(hire.candidates,base.design, max.trials=10)

#add 4 cards, accepting cross corellations up to .35
#warning, this may take several minutes

#mc.add.to.design(hire.candidates,base.design,4,tol=.35)

# you can speed this up and in this case
# have almost as many good designs (53 vs.54)

#mc.add.to.design(hire.candidates,base.design,4,tol=.35,max.trials=10)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate}

