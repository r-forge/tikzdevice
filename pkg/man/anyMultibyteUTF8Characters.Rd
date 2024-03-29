\encoding{UTF8}
\name{anyMultibyteUTF8Characters}
\alias{anyMultibyteUTF8Characters}
\title{Check If a String Contains Multibyte UTF-8 characters
This function is used by tikzDevice to check if an incoming string contains
multibyte UTF-8 characters}
\usage{
  anyMultibyteUTF8Characters(string, encoding = "UTF-8")
}
\arguments{
  \item{string}{A character vector of length 1 (a string).}

  \item{encoding}{The input encoding of \code{string}, if
  not specified previously via \code{\link{Encoding}} or by
  this argument then a value of "UTF-8" is assumed}
}
\value{
  A boolean value
}
\description{
  This function searches through the characters in the
  given string, if any of the characters in the string are
  more than one byte then the function returns \code{TRUE}
  otherwise it returns \code{FALSE}.
}
\details{
  The function will assume an input encoding of UTF-8 but
  will take any specified encoding into account and will
  convert from the specified encoding to UTF-8 before doing
  any checks
}
\examples{
# TRUE
anyMultibyteUTF8Characters('R is GNU ©, but not ®')
# FALSE
anyMultibyteUTF8Characters('R is GNU copyright but not restricted')
}
\author{
  Cameron Bracken \email{cameron.bracken@gmail.com}
}
\seealso{
  \code{\link{tikz}}
}
\keyword{character}

