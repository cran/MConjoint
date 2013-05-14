\name{MConjoint-package}
\alias{MConjoint-package}
\alias{MConjoint}
\docType{package}
\title{
Perform Conjoint Analysis using multiple designs
}
\description{
The Multiple Conjoint Analysis package changes the meaning
and use of traditional holdout cases.  Rather than using
the holdout cases to check a single design, the "holdouts"
are used to create a large set of designs, each of which
is analyzed.  The average result is used
}
\details{
\tabular{ll}{
Package: \tab MConjoint\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2013-05-14\cr
License: \tab GPL-3\cr
}
The use of the routines centers around something I call a "despack"
a design package.  A despack contains despack$cards: a list of the m cards
for which ranks are obtained; despack$designs: a list of designs each with
n cards drawn from the list of m cards; despack$samples, a list of samples of length
n, drawn from 1:m, corresponding to the cards used in the design;
despack$coeffs:  a list of matrices of linear coefficients; despack$all.utils:
a list of lists of utility values, on for each column of the coeffs matrices;
despack$all.imps, a list of matrices of importances, one column for each utility;
despack$utils:  a list of utilities  (average taken over
first index of the list of lists; despack$imps:  the average of the 
list of importance matices


Start with a data set, full.design, with all possible cards.  (This may be the
full factorial design (all combinations of levels)) or some
combinations may be removed.

Obtain a "good" design of n cards (for information on what
makes a design good see the documentation for mc.good.desgins).  To this you
add extra.cards cards in such a way that you maximize the number of subsets
of the m=n + extra.cards of length n that lead to "good"
designs.

Both operations can be done by calling

\code{orig.design = mc.get.initial.design(full.design)}

\code{orig.design$design} will be the m cards for which you will collect
data

You then obtain your data, \code{data}, a matrix with each column corresponding the the ranks
given to the cards by one subject.  Then run

\code{despack = good.designs(orig.design$design)}

This will give an initial despack, with $cards, $samples, and $designs

Fill the other elements of despack by calling

\code{despack=M.Conjoint(despack,data)}

This will print a summary with the utilites and the importances
averaged over the subjects (an operation that may or may not be useful)

}
\author{
William Hughes

Maintainer: William Hughes <William.Hughes@rogers.com>
}

\keyword{ package }

\examples{
#  A simple conjoint problem.  Managers can make hiring descisions
#  based on the factors
#  University: Prestige, Excellent, Good; Sex: Male, Female;
#  Dress: smart, messy; Hair: long, short.
#  We want to determine the importance of these factors.
#  We interview two managers.  The first picks first by
#  University, then by sex, male over female, then
#  by dress, smart over messy, and does not care about hair
#  length.  The second is like the first except that
#  this manager picks female over male.

# start with the full factorial design

data(hire.candidates)

#get a questionaire

hire.questionaire = mc.get.initial.design(hire.candidates,max.trials=10)

#collect the data

data(hire.data)

#get a design pack for the analyis

hire.despack=mc.good.designs(hire.questionaire$design, size=20)

#do the conjoint analysis

hire.despack=M.Conjoint(hire.despack,hire.data)

# (note this illustrates the danger of averaging utilities.
# The average utility for both Male and Female is small, but
# Sex is important to both managers)
}