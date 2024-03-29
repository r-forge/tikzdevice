\name{getLatexStrWidth}
\alias{getLatexCharMetrics}
\alias{getLatexStrWidth}
\title{Obtain Font Metrics from LaTeX}
\usage{
  getLatexStrWidth(texString, cex = 1, face = 1,
    engine = getOption("tikzDefaultEngine"),
    documentDeclaration = getOption("tikzDocumentDeclaration"),
    packages)

  getLatexCharMetrics(charCode, cex = 1, face = 1,
    engine = getOption("tikzDefaultEngine"),
    documentDeclaration = getOption("tikzDocumentDeclaration"),
    packages)
}
\arguments{
  \item{texString}{An arbitrary string for which the width
  is to be calculated.  May contain LaTeX markup.}

  \item{cex}{a real number that specifies a scaling factor
  that is to be applied to device output.}

  \item{face}{an integer in the range [1-5] that specifies
  the font face to use. See \link{par} for details.}

  \item{engine}{a string specifying which TeX engine to
  use. Possible values are 'pdftex', 'xetex' and 'luatex'.
  See the Unicode section of \link{tikzDevice} for
  details.}

  \item{documentDeclaration}{See the sections ``Options
  That Affect Package Behavior'' and ``Font Size
  Calculations'' of \link{tikzDevice-package} for more
  details.}

  \item{packages}{See the section ``Options That Affect
  Package Behavior'' of \link{tikzDevice-package}.}

  \item{charCode}{an integer that corresponds to a symbol
  in the ASCII character table under the Type 1 font
  encoding. All numeric values are coerced using
  \code{as.integer}. Non-numeric values will not be
  accepted.}
}
\value{
  \item{getLatexStrWidth}{The width of \code{texString} in
  points.} \item{getLatexCharMetrics}{A numeric vector
  holding ascent, descent and width. Values should all be
  nonnegative.}
}
\description{
  These functions calculate the width of a character or
  string as it would appear after being compiled by LaTeX.
}
\details{
  These functions are used internally by the \code{tikz}
  device for proper string placement in graphics.  Both
  functions check to see if metrics exist in a global or
  temporary dictionary (as defined in
  \code{options('tikzMetricsDictionary')}) and if so will
  pull the metrics from there. If the dictionary does not
  exist, then a temporary one is created for the current R
  session. Metrics are calculated via \code{system} calls
  to LaTeX compilers. Querying compilers to calculate
  metrics is expensive and so we strongly recommend setting
  \code{options('tikzMetricsDictionary') <-
  /path/to/dictionary} to create a global dictionary.
}
\examples{
getLatexStrWidth('{\\\\\\\\tiny Hello \\\\\\\\LaTeX!}')
# Calculate ascent, descent and width for "A"
  getLatexCharMetrics(65)
}
\author{
  Charlie Sharpsteen \email{source@sharpsteen.net} and
  Cameron Bracken \email{cameron.bracken@gmail.com}
}
\references{
  PGF Manual
}
\keyword{character}
\keyword{metrics}
\keyword{string}

