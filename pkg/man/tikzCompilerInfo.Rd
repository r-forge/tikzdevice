\name{tikzCompilerInfo}
\alias{tikzCompilerInfo}
\title{Print paths to TeX compilers.}
\usage{
  tikzCompilerInfo(verbose = TRUE)
}
\arguments{
  \item{verbose}{If set to \code{FALSE}, calling this
  function will not cause any output to be printed to the
  screen. Defaults to \code{TRUE}.}
}
\value{
  Invisibly returns a list containing paths to TeX
  compilers.
}
\description{
  This function reports information concerning compilers
  that the \code{tikz} device will use to calculate
  character metrics. Information on LaTeX will always be
  available but information on XeLaTeX and LuaLaTeX will
  only be reported if the compilers were found.
}
\author{
  Charlie Sharpsteen \email{source@sharpsteen.net}
}
\seealso{
  \code{\link{tikz}}
}

