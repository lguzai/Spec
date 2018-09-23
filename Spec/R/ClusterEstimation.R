#' @title Estimate the number of possible clusters
#' @name clusterEstimatetNumber
#'
#' @description Adaptation of the bartlett method of the speccalt package to 
#'              estimate the number of clusters in the context of spectral 
#'              clustering to detect change points
#'
#' @param eigenvectorValues Eigenvector matrix based on the affinity matrix
#' @param tolerance approximation to consider valid clusters
#' @param maxClusterNumber maximum number of calculable clusters
#'
#' @details Adaptation of the bartlett method of the speccalt package to 
#'          estimate the number of clusters in the context of spectral 
#'          clustering to detect change points
#'
#' @return An estimated number of clusters
#'
#' @author Luis Gustavo Uzai
#'
#' @importFrom stats pchisq
#'
clusterEstimatetNumber <- function(eigenvectorValues, tolerance, maxClusterNumber) {
    eigenvectorLength <- length(eigenvectorValues)
    eigenvectorLengthLessOne <- eigenvectorLength - 1

    eigenvectorValues[eigenvectorValues < 10 ^ {-12 }] <- 10 ^ {-12 }
    stats <- numeric()
    tests <- numeric()

    for (clusterNumber in 2:maxClusterNumber) {
        reverseClusterNumber <- eigenvectorLength - clusterNumber
        freedomDegree <- (clusterNumber - 1) * (clusterNumber + 2) / 2

        clusterFact <- getClusterFact(eigenvectorValues, eigenvectorLengthLessOne,
                                      clusterNumber, reverseClusterNumber)
        clusterProd <- getClusterProd(eigenvectorValues, eigenvectorLengthLessOne,
                                      clusterNumber, reverseClusterNumber)

        statisticalTest <- -clusterFact * log(clusterProd)
        stats <- c(stats, statisticalTest)
        tests <- c(tests, stats::pchisq(statisticalTest, freedomDegree))
    }

    if (any(tests > tolerance)) {
        clusterNumber <- which(tests > tolerance)[1]
    } else {
        clusterNumber <- which.max(tests)
    }

    return(clusterNumber)
}

#' @title Get the Factor of the cluster position in relation to the matrix of eigenvectors
#' @name getClusterFact
#'
#' @description Get the Factor of the cluster position in relation to the matrix of eigenvectors
#'
#' @param eigenvectorValues Eigenvector matrix based on the affinity matrix
#' @param eigenvectorLengthLessOne the eigenvector matrix size minus 1
#' @param clusterNumber the cluster position number being tested
#' @param reverseClusterNumber the number of the inverse position of the cluster being tested
#'
#' @details  Gets the factor of the value and its opposite in relation 
#'           to the matrix of the eigenvectors
#'
#' @return Factor of the cluster position in relation to the matrix of eigenvectors
#'
#' @author Luis Gustavo Uzai
#'
getClusterFact <- function(eigenvectorValues, eigenvectorLengthLessOne,
                           clusterNumber, reverseClusterNumber) {
    clusterNumberLessOne <- eigenvectorLengthLessOne - reverseClusterNumber
    clusterDistribution <- (2 * clusterNumber ^ 2 + 2) / (6 * clusterNumber)
    clusterMean <- mean(eigenvectorValues[(reverseClusterNumber + 1):eigenvectorLengthLessOne])
    clusterSquareMean <- (clusterMean ^ 2)
    clusterInverseSquareMean <- ((1 - clusterMean) ^ 2)

    fact <- clusterNumberLessOne - clusterDistribution + reverseClusterNumber *
            clusterSquareMean / clusterInverseSquareMean
    return(fact)
}

#' @title Get the Product of the cluster position in relation to the matrix of eigenvectors
#' @name getClusterProd
#'
#' @description Get the Product of the cluster position in relation to the matrix of eigenvectors
#'
#' @param eigenvectorValues Eigenvector matrix based on the affinity matrix
#' @param eigenvectorLengthLessOne the eigenvector matrix size minus 1
#' @param clusterNumber the cluster position number being tested
#' @param reverseClusterNumber the number of the inverse position of the cluster being tested
#'
#' @details  Gets the product of the value and its opposite in relation 
#'           to the matrix of the eigenvectors
#'
#' @return Product of the cluster position in relation to the matrix of eigenvectors
#'
#' @author Luis Gustavo Uzai
#'
getClusterProd <- function(eigenvectorValues, eigenvectorLengthLessOne,
                           clusterNumber, reverseClusterNumber) {
    clusterTotal <- (clusterNumber - 1) *
        eigenvectorValues[(reverseClusterNumber + 1):eigenvectorLengthLessOne]
    clusterSum <- sum(eigenvectorValues[(reverseClusterNumber + 1):eigenvectorLengthLessOne])

    prod <- prod(clusterTotal / clusterSum)
    return(prod)
}