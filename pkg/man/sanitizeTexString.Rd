\name{sanitizeTexString}
\alias{sanitizeTexString}
\title{Replace LaTeX Special Characters in a String
This function is used by tikzDevice when \code{sanitize=TRUE} to replace
special LaTeX characters (such as the comment character %) in plotting text
where the user does not have direct control over the generated text.}
\usage{
  sanitizeTexString(string,
    strip = getOption("tikzSanitizeCharacters"),
    replacement = getOption("tikzReplacementCharacters"))
}
\arguments{
  \item{string}{A character vector of length 1 (a string).}

  \item{strip}{A character vector of single characters to
  search for.}

  \item{replacement}{A character vector of replacement
  values.}
}
\value{
  \item{sanitizedString}{A character vector of length 1
  with all special characters replaced.}
}
\description{
  \code{sanitizeTexString} searches character by character
  through a string replacing each occurrence of a special
  character contained in \code{strip[i]} with the
  corresponding replacement value in \code{replacement[i]}.
  tikzDevice calls back this function for every piece of
  text when the sanitize option is TRUE. See
  \code{\link{tikz}} for more information on the default
  special characters and replacement values.
}
\details{
  By default, `tikzSanitizeCharacters` replaces the
  following characters:

  \itemize{ \item \verb{\%} \item \verb{$} \item \verb{\}}
  \item \verb{\{} \item \verb{^} \item \verb{_} \item
  \verb{#} \item \verb{&} \item \verb{~} }

  With the contents of `tikzReplacementCharacters`:

  \itemize{ \item \verb{\\\%} \item \verb{\\$} \item
  \verb{\\\}} \item \verb{\\\{} \item \verb{\\^{}} \item
  \verb{\\_{}} \item \verb{\\#} \item \verb{\\&} \item
  \verb{\char`\~} }

  These defaults may be adjusted using the
  \code{\link{options}} function.
}
\examples{
# Be careful with sanitizing, it may lead to unexpected behavior.
# For example, we may want -1 to be a superscript it gets
# sanitized away with the other default special characters.
# The string appears in LaTeX exactly as shown.
\dontrun{
	sanitizeTexString('10\\\% of 10$ is 10^\\{-1\\}$')
}
}
\author{
  Cameron Bracken \email{cameron.bracken@gmail.com}
}
\seealso{
  \code{\link{tikz}}
}
\keyword{character}

