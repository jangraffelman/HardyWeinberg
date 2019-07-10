\name{HWf}
\alias{HWf}
\title{
 Computation of inbreeding coefficient
}
\description{
  \code{HWf} computes the inbreeding coefficient for a sample
  of genotypes.
}
\usage{
HWf(X)
}
\arguments{
  \item{X}{a vector of genotype counts (AA, AB, BB)}
}
\details{
   For monomorphic markers a warning is issued, and the estimate for the
   inbreeding coefficient is set to zero. 
}
\value{
  Returns the inbreeding coefficient (intraclass correlation coefficient)
}
\references{
Crow, J. F. and Kimura, M. (1970) An introduction to population genetics theory.
Harper \& Row, publishers, New York
}
\author{ Jan Graffelman \email{jan.graffelman@upc.edu} }
\seealso{ \code{\link{HWChisq}} }
\examples{
x <- c(MM=298,MN=489,NN=213)
f <- HWf(x)
cat("Inbreeding coefficient: ",f,"\n")
}
\keyword{misc}




