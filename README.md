# Spec R Package

Spec is an open-source R package that makes change point detection in time series. The Spec package can be used in wide variety of contexts. For example, detecting change points in user engagement post an A/B test, detecting behavioral change or for problems in econometrics, financial engineering, political and social sciences.

## How the package works
The purpose of spectral clustering is to group data that is connected, but not necessarily grouped into convex boundaries. To perform spectral clustering, just as in ordinary clustering, a measure of similarity or affinity s(x,y) is needed to determine how close points x and y are to each other.

Denoting the similarity matrix S, where Sij = s (xi, xj) given the similarity between the observations xi and xj. Using a similarity measure of points as Gaussian, the closer the values ​​are to 1 and the more distant they are to 0, computing the similarity matrix S and generating an array based on the affinity of S denominated A, being A positive and symmetric.

Having the affinity matrix, the grouping is replaced by a graph partitioning problem, where connected components of the graph are interpreted as Cluster. The graph must be partitioned in such a way that the edges that connect different groups must have low weights and the edges within the same group must have high values.

The next step is to compute the Laplacian Graph, resulting from the subtraction of a degree matrix where each diagonal value is the degree of the respective vertex and all other positions are zero, of the previously calculated affinity matrix, there are variants of the Laplacian matrix that can be applied in this case.

Assuming that we intend to identify n groups, the next step is to find the eigenvectors less eigenvectors (ignoring the trivial constant eigenvector). The eigenvalue spectrum has a gap that gives the value of n.

After the initial determination of the change points and cluster of the time series, it is plausible to verify whether the groups actually represent a change in meaning and variance, that is, performing a verification test to determine if the change points can not represent a change false positive. 

Based on the results of the tests, the clusters can be grouped and points of change not considered, the tolerance of the tests should be considered taking into account the nature of the data distribution, as well as previous knowledge of the application domain so that the balance between data and actual change point can be defined.

## How to get started
Install the R package using the following commands on the R console:
```
install.packages("Spec")
library(Spec)
```

The function Spec is called to detect one or more statistically significant change points in the input time series. The documentation of the function Spec, which can be seen by using the following command, details the input arguments and the output of the function Spec.

```
help(Spec)
```

## A example
To get started, the user is recommended to use the example dataset which comes with the packages. Execute the following commands:

```
data(DEVICE)
data <- DEVICE1[, 1]
realChangePoints <- c(which(diff(DEVICE1$Class) != 0)) #Actual result for comparison
calculateChangePoints <- Spec(data, neighboorsNumber = 6, tolerance = 0.005, estimationChangePointsNumber = 2)

realChangePoints
calculateChangePoints

minValue <- -99999
maxValue <- 99999

plot(data, type = "l", xlab = "x", ylab = "y")
for (r in 1:length(realChangePoints)) {
    lines(x = c(realChangePoints[r], realChangePoints[r]),
          y = c(minValue, maxValue), lwd = 2, col = "red")
}
for (n in 1:length(calculateChangePoints)) {
    lines(x = c(calculateChangePoints[n], calculateChangePoints[n])
        , y = c(minValue, maxValue), lwd = 2, col = "blue")
```

From the plot, we observe that the input time series experiences two change points and also has quite a few anomalies. The two red vertical lines denote the locations of the real change points and the blue vertical lines denote the locations of the change points detected by the Spec algorithm. 
