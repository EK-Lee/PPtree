% Generated by roxygen2 (4.0.2): do not edit by hand
\name{PPindex.class}
\alias{PPindex.LDA,}
\alias{PPindex.Lp,}
\alias{PPindex.PDA}
\alias{PPindex.class}
\alias{PPindex.class,}
\title{Calculate Projection Pursuit index}
\usage{
PPindex.class(PPmethod, data, class, weight=TRUE, r=NULL, lambda=NULL, ...)
PPindex.LDA(data, class, weight=TRUE, ...)
PPindex.Lp(data, class, r, ...)
PPindex.PDA(data, class, lambda, ...)
}
\arguments{
\item{PPmethod}{Selected PP index, LDA, Lp, PDA}

\item{data}{A data  without class information}

\item{class}{class information}

\item{weight}{weight flag using in LDA index}

\item{r}{a parameter for \eqn{L^r} index}

\item{lambda}{a parameter for PDA index}
}
\value{
The value is an projection pursuit index for given data.
}
\description{
For given projected data and class information, calculate projection pursuit index.
}
\examples{
data(iris)
n <- nrow(iris)
PPindex.class("LDA",iris[,1:2],iris[,5])
PPindex.class("LDA",iris[,1:2],iris[,5],weight=FALSE)
PPindex.class("Lp",iris[,1:2],iris[,5],r=1)
PPindex.class("PDA",iris[,1:2],iris[,5],lambda=0.1)
}
\seealso{
\code{\link{PP.optimize}}
}
\keyword{multivariate}

