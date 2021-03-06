% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_ridge.R
\name{vcovfestRidge}
\alias{vcovfestRidge}
\title{Standard Error Estimate}
\usage{
vcovfestRidge(
  fLoss,
  lambda,
  XtX,
  postBeta,
  postSigma2,
  penalize,
  ind = 1,
  version = c("varExp", "full")
)
}
\arguments{
\item{fLoss}{A matrix of loss function values to be minimized.
Assumed structure is the columns correspond to different
values of penalty parameter and rows correspond to points
in a posterior sample of (beta, sigma).}

\item{lambda}{The sequence of penalty parameter values
corresponding to the columns of \code{fLoss}.}

\item{XtX}{Cross product of the design matrix.}

\item{postBeta}{Matrix containing the posterior sample of 
beta values. Assumed to be n-by-p, where n is number of
samples (and equal to number of rows in fLoss) and p is
number of regression parameters in model.}

\item{postSigma2}{Vector containing the posterior sample
of variance parameters.  Should have same length as 
postBeta.}

\item{penalize}{Vector indicating which variables are
penalized in the regression model.  See details for
\code{\link{estRidge}} for further details.}

\item{ind}{Numerical or logical vector indicating which elements
of the variance matrix should be returned. Defaults to the
(1,1) element}

\item{version}{Character string indicating which version of
standard error to compute. 'varExp' or 'full', corresponding
to the variance of the conditional mean of the estimator or
that plus the expected value of the conditional variance. In
practice, the latter is often too large.}
}
\description{
Computes an estimate of the variance-covariance
	matrix for an 'fLoss' ridge estimator
}
\details{
Computes a standard error estimate for an 'fLoss'
	estimator, where 'fLoss' is typically fMSE or fMBV.
	Approximates the variance of the estimator using the 
	the variance conditional on the observed data (i.e. 
	using the posterior distribution of parameters).
    Currently, two different versions are available.
}
\seealso{
\code{\link{festRidge}, \link{samplePosterior}}
}
\author{
Joshua Keller
}
