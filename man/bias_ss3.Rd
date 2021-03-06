% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bias_ss3.r
\name{bias_ss3}
\alias{bias_ss3}
\title{Perform a single bias adjustment run}
\usage{
bias_ss3(iter, dir)
}
\arguments{
\item{iter}{Replicate number. Used to identify this iteration if there are
multiple adjustment runs.}

\item{dir}{Passes \code{dir} from the function \code{\link{run_bias_ss3}} to
\code{bias_ss3}. In \code{\link{run_bias_ss3}} this is run within an
\code{\link[base]{sapply}} function for each of the bias adjustment runs.}
}
\value{
A plain text file containing the bias adjustment variables is created at
\code{dir/AdjustBias.DAT}. A PDF figure is created in
\code{dir/biasramp-N.pdf}, where \code{N} represents the iteration number.
}
\description{
This function is run within \code{\link{run_bias_ss3}} and for a
single run it: \itemize{
  \item uses \pkg{r4ss} function \code{\link[r4ss]{SS_output}} to read in the
output from a single bias adjustment run
  \item uses \pkg{r4ss} function \code{\link[r4ss]{SS_fitbiasramp}} to
    calculate the bias adjustment parameters for that run
\item Writes the bias adjustment parameters to the file \code{AdjustBias.DAT}
  within the \code{dir} folder, overwriting the file if \code{iter = 1} (the
  first run) and appending the file otherwise
}
}
\author{
Carey McGilliard
}
\references{
Methot, R. D. and Taylor, I. G. (2011). Adjusting for bias due to variability
of estimated recruitments in fishery assessment models. Can. J. Fish. Aquat.
Sci., 68(10):1744-1760.
}
\seealso{
\code{\link{run_bias_ss3}}, \code{\link{run_ss3sim}},
  \code{\link{ss3sim_base}}
}

