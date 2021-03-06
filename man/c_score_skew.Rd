% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/metrics.R
\name{c_score_skew}
\alias{c_score_skew}
\title{CScoreSkew Co-occurrence Metric}
\usage{
c_score_skew(m = matrix(rbinom(100, 1, 0.5), nrow = 10))
}
\arguments{
\item{m}{a binary presence-absence matrix in which rows are species and columns
are sites.}
}
\value{
Returns the skewness of the C-score calculated across all possible
species pairs in the matrix.
}
\description{
Takes a binary presence-absence matrix and returns
the skewness of the Stone and Roberts' (1990) C-score.
}
\details{
A large positive value of skewness implies a preponderance of species pairs
with large C-score values (segregated), whereas a large negative value of
skewness implies a preponderance of species pairs with small C-score values
(aggregated).
}
\note{
The matrix-wide C-score is not calculated for missing species, so empty
rows in the matrix do not affect the result. This index has not been
thoroughly tested with real data sets.
}
\examples{
skewCScore <- c_score_skew(m=matrix(rbinom(100,1,0.5),nrow=10))
}
\references{
Stone, L. and A. Roberts. 1990. The checkerboard score and species
distributions. Oecologia 85: 74-79.

Stone, L. and A. Roberts. 1992. Competitive exclusion, or species aggregation?
An aid in deciding. Oecologia 91: 419-424.
}
\seealso{
\code{\link{c_score}} co-occurrence index.
}

