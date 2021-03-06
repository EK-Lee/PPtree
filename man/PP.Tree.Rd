% Generated by roxygen2 (4.0.2): do not edit by hand
\name{PP.Tree}
\alias{PP.Tree}
\title{Finding PP tree structure using various indices}
\usage{
PP.Tree(PPmethod,  i.class, i.data, weight = TRUE, ...)
}
\arguments{
\item{PPmethod}{method for projection pursuit, LDA, PDA, Lp, Gini, Enp}

\item{i.class}{class information}

\item{i.data}{A training data  without class information}

\item{weight}{weight flag using in LDA index}
}
\value{
Tree.Struct Tree structure of PPtree result

Alpha.Keep 1D projections of each split

C.Keep spliting rules for each split
}
\description{
Find tree structure using various projection pursuit indices of classification in each split.
}
\examples{
data(iris)
n <- nrow(iris)
tot <- c(1:n)
n.train <- round(n*0.9)
train <- sample(tot,n.train)
test <- tot[-train]
Tree.result <- PP.Tree("LDA",iris[train,5],iris[train,1:4])
Tree.result
}
\references{
Lee, YD, Cook, D., Park JW, and Lee, EK(2013)
PPtree: Projection pursuit classification tree,
Electronic Journal of Statistics, 7:1369-1386.
}
\seealso{
{\code{\link{PPindex.class}}, \code{\link{PP.optimize}}}
}
\keyword{tree}

