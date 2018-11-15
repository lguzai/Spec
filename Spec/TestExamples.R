###Imports
library(devtools)
library(stats)
library(abind)
library(roxygen2)

###Data
load("data\\FTIR.RData")
load("data\\DEVICE.RData")

###Load Script
###source("R\\CalculateSimilarity.R")
###source("R\\CalculateAffinity.R")
###source("R\\CalculateEigenvector.R")
###source("R\\SpectralClustering.R")
###source("R\\ClusterEstimation.R")
###source("R\\Spec.R")
load_all()

###Parameters
data <- DEVICE1[, 1]

###Script Execute 
realChangePoints <- c(which(diff(DEVICE1$Class) != 0)) ###Actual result for comparison
calculateChangePoints <- Spec(data, neighboorsNumber = 6,
                              tolerance = 0.005, estimationChangePointsNumber = 2)
SpecDetec <- Spec(data, neighboorsNumber = 6, tolerance = 0.005, estimationChangePointsNumber = 2)
Pelt <- cpt.meanvar(data, test.stat = 'Normal', method = 'PELT', penalty = "SIC", pen.value = 0.01)
eDivisive <- e.divisive(as.matrix(data), alpha = 1)
EDM <- breakout(data, method = 'multi', beta = .001, degree = 1, plot = TRUE)
EDM <- breakout(data, method = 'multi', beta = .001, degree = 1, plot = TRUE)
gSeg.dist <- dist(data)
gSeg.tree <- mstree(gSeg.dist)
gSeg.gseg2 <- gseg2(length(data), gSeg.tree, statistics = c("all", "o", "w", "g", "m"), n0 = 0.05 * n, n1 = 0.95 * n, pval.appr = TRUE, skew.corr = TRUE, pval.perm = FALSE, B = 100)

calculateChangePoints <- SpecDetec

###Plot Results
realChangePoints
calculateChangePoints

minValue <- -99999
maxValue <- 99999

plot(data, type = "l", xlab = "x", ylab = "y")
for (r in 1:length(realChangePoints)) {
    lines(x = c(realChangePoints[r], realChangePoints[r]),
          y = c(minValue, maxValue), lwd = 5, col = "red")
}
for (n in 1:length(calculateChangePoints)) {
    lines(x = c(calculateChangePoints[n], calculateChangePoints[n])
        , y = c(minValue, maxValue), lwd = 2, col = "blue")
}