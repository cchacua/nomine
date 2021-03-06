% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ethnicites.R
\name{get_ethnicities}
\alias{get_ethnicities}
\title{Classifies names based on 6 U.S. ethnicities}
\usage{
get_ethnicities(x, t = NULL, warnings = FALSE)
}
\arguments{
\item{x}{A vector of names,  in the form "First_name Last_name". If there are multiple segments separated by white spaces, only the first and the last segments are taken into account.}

\item{t}{A string with the API access token. The default value is NULL, although you must set your own token. A Name-Prism API token can be obtained for research purposes to overcome the limit of anonymous API use. Please visit \url{http://www.name-prism.com/api} for more details.}

\item{warnings}{Logical. If TRUE, then a warning message will be displayed when a name cannot be analyzed. The default value is FALSE.}
}
\value{
A data frame of dimensions length(x)*9, with the probability of belonging to each of the 6 different U.S. ethnicities. Errors (e.g. connection is interrupted, invalid tokens) are handled as NA.
}
\description{
Returns an object that classifies any inputted name(s) according to 6 different U.S. ethnicities.
}
\examples{
# Vector of names.
x <- c("Charles Crabtree", "Volha Chykina", "Christian Chacua", "Christian Mauricio Chacua")
# Using the API token a1a2a34aa56789aa (you should get your own token)
y <- get_ethnicities(x, t="a1a2a34aa56789aa", warnings=FALSE)
y
# "Christian Chacua" and "Christian Mauricio Chacua" have the same probabilities as "Mauricio" is not taken into account.
}
\author{
Charles Crabtree \email{ccrabtr@umich.edu} and Christian Chacua \email{christian-mauricio.chacua-delgado@u-bordeaux.fr}
}
