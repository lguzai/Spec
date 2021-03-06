% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Spec.R
\name{Spec}
\alias{Spec}
\title{Calculate change points with spectral cluster}
\usage{
Spec(data, neighboorsNumber = 5, tolerance = 0.01,
  maxNumberOfChangePoints = 19, estimationChangePointsNumber = NULL)
}
\arguments{
\item{data}{List of values corresponding to the time series}

\item{neighboorsNumber}{Number of neighbors to consider affinity between nodes}

\item{tolerance}{approximation to consider valid clusters, used only for calculation of 
forecast of change points, default 0.01}

\item{maxNumberOfChangePoints}{maximum number of clusters for prediction : default 19}

\item{estimationChangePointsNumber}{predicted number of change points in the series, if null, 
is automatically calculated: default null}
}
\value{
Numerical array with the position of the change points in the time series
}
\description{
Calculate change point based on spectral clustering you have the option 
             to automatically calculate the number of clusters if this information 
             is not available
}
\details{
Calculate change point based on spectral clustering you have the option 
         to automatically calculate the number of clusters if this information 
         is not available. It uses the Gaussian Kernel for the calculation of 
         affinity matrix and Kmeans for the spectral cluster, however, several 
         other options can be used and the package must be customized to better 
         suit the use.
}
\examples{
data <- DEVICE1[, 1]
realChangePoints <- c(which(diff(DEVICE1$Class) != 0)) 
calculateChangePoints <- Spec(data, neighboorsNumber = 6, 
         tolerance = 0.005, estimationChangePointsNumber = 2)
minValue <- -99999
maxValue <- 99999
plot(data, type = "l", xlab = "x", ylab = "y")
for (r in 1:length(realChangePoints)) {
    lines(x = c(realChangePoints[r], realChangePoints[r]), 
          y = c(minValue, maxValue), lwd = 2, col = "red")
}
for (n in 1:length(calculateChangePoints)) {
 lines(x = c(calculateChangePoints[n], calculateChangePoints[n]), 
       y = c(minValue, maxValue), lwd = 2, col = "blue")
}

}
\author{
Luis Gustavo Uzai
}
