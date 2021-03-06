\name{UseFunction}
\alias{UseFunction}
\alias{NewObject}
\title{Primary dispatcher for functional programming }
\description{UseFunction manages the dispatching for multipart functions in 
lambda.r. This is used internally by lambda.r.}
\usage{
UseFunction(fn, fn.name, ...)
NewObject(type.fn, type.name, ...)
}
\arguments{
  \item{fn}{The function reference that is being applied}
  \item{fn.name}{The name of a function that uses functional dispatching. This
    is just the name of the function being defined}
  \item{type.fn}{The function representing the type constructor}
  \item{type.name}{The name of the type}
  \item{\dots}{The arguments that are passed to dispatched functions }
}
\details{
  This function is used internally and generally does not need to be called
  by an end user.
}
\value{
  Returns the value of the dispatched function
}
\author{ Brian Lee Yung Rowe }

\seealso{
\code{\link{\%as\%}}
}
\examples{
# Note that these are trivial examples for pedagogical purposes. Due to their
# trivial nature, most of these examples can be implemented more concisely
# using built-in R features.


reciprocal(x) \%::\% numeric : numeric
reciprocal(x) \%when\% {
  x != 0
} \%as\% {
  1 / x
}

reciprocal(x) \%::\% character : numeric
reciprocal(x) \%as\% {
  reciprocal(as.numeric(x))
}

seal(reciprocal)

print(reciprocal)
reciprocal(4)
reciprocal("4")

}
\keyword{ methods }
\keyword{ programming }
