% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotTrees.R
\name{plotCLUSTERS}
\alias{plotCLUSTERS}
\title{generate tree plots for each ensemble matrix
\code{plotCLUSTERS} plot all cluster trees}
\usage{
plotCLUSTERS(EnsList, mfrow, mar = c(1, 1, 1, 1), line = -1.5, cex = 0.5,
  ...)
}
\arguments{
\item{EnsList}{a list in which elements are ensemble matrices.}

\item{mfrow}{A vector of the form \code{c(nr, nc)} passed to \code{\link{par}}.}

\item{mar}{plotting parameters with useful defaults (\code{\link{par}})}

\item{line}{plotting parameters with useful defaults (\code{\link{par}})}

\item{cex}{plotting parameters with useful defaults (\code{\link{par}})}

\item{...}{further plotting parameters}
}
\value{
a graph containing all tree plots with each tree plot corresponding to the community structure from each of the ensemble matrix.
}
\description{
generate tree plots for each ensemble matrix
\code{plotCLUSTERS} plot all cluster trees
}
\details{
\code{plotCLUSTERS} plots all cluster trees with each tree corresponding to each ensemble matrix in the list of ens_list.
\code{EnsList} is the output from \code{getEnsList}.

\code{mfrow} determines the arrangement of multiple plots. It takes the form of
\code{c(nr, nc)} with the first parameter being the number of rows and
the second parameter being the number of columns. When deciding parameters for mfrow,
one should take into considerations size of the plotting device and number of cluster plots.
For example, there are 20 cluster plots, mfrow can be set to \code{c(4, 5)} or \code{c(2, 10)}
depending on the size and shape of the plotting area.
}
\examples{
symmetricMatrix <- as.symmetricAdjacencyMatrix(monkeyGrooming, weighted = TRUE, rule = "weak")
Sim <- as.SimilarityMatrix(symmetricMatrix)
temperatures <- temperatureSample(start = 0.01, end = 20, n = 20, method = 'random')
\dontrun{
# for illustration only. skip CRAN check because it ran forever.
Ens_list <- getEnsList(Sim, temperatures, MaxIt = 1000, m = 5)
}
\dontshow{
# for CRAN check only
Ens_list <- getEnsList(Sim, temperatures, MaxIt = 5, m = 5)
}
plotCLUSTERS(EnsList = Ens_list, mfrow = c(2, 10), mar = c(1, 1, 1, 1))
}
\references{
Fushing, H., & McAssey, M. P. (2010).
Time, temperature, and data cloud geometry.
Physical Review E, 82(6), 061110.

Chen, C., & Fushing, H. (2012).
Multiscale community geometry in a network and its application.
Physical Review E, 86(4), 041120.

Fushing, H., Wang, H., VanderWaal, K., McCowan, B., & Koehl, P. (2013).
Multi-scale clustering by building a robust and self correcting ultrametric topology on data points.
PloS one, 8(2), e56259.
}
\seealso{
\code{\link{getEnsList}}
}

