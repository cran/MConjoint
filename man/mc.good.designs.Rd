\name{mc.good.designs}
\alias{mc.good.designs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
mc.good.design
}
\description{
given a set of m cards, find "good"
designs with cards rows}
\usage{
mc.good.designs(orig.set, cards = NULL, slack = 1, tol = 0.2, no.replace = TRUE,
                size = 100, max.trials = 1e+06)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{orig.set}{
     a design of length m
}
  \item{cards}{
     The number of cards in each "good" design found.
}
  \item{slack}{
   How much the number of each factor can vary in a "good" design

}
  \item{tol}{
  The largest cross correlation in a "good" design
}
  \item{no.replace}{
  Sample without replacement:  TRUE or FALSE
}
  \item{size}{
  The number of "good" designs to find  
}
  \item{max.trials}{
  The maximum number of designs to look at
}
}
\details{
The function takes samples with \code{cards} rows from the \code{orig.design}.  For each
sample it checks whether the design is "good".  A design is said to be
good if it is balanced (for each factor each level occurs about the same number
of times, the maximum difference is \code{slack}) and the different factors
are uncorrelated (maximum cross correlation is \code{tol}).  Sampling continues
(with or without replacement depending on \code{no.replace}) until one of \code{size}
good designs are found, all designs have been checked, or \code{max.trials} designs
have been checked.  If fewer than \code{size} design are found then
a warning is printed.

}
\value{
A despack with the following field filled


 \item{cards}{set equal to \code{orig.set}}
  \item{samps}{a list of samples, the row numbers of the corresponding designs}
 \item{designs}{ the good designs found}
}
\author{
William Hughes
}
\examples{

data(hire.questionaire)


#default
mc.good.designs(hire.questionaire$design)

#look for 7 card designs, with the cross correlation tolerance increased to .3

#mc.good.designs(hire.questionaire$design,7,tol=.3)



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

