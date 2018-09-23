#' @title Clustering with the smallest eigenvectors from eigenvector Matrix
#' @name getSpectralClusters
#'
#' @description Clustering with the smallest eigenvectors from eigenvector Matrix
#'
#' @param eigenvectorMatrix Eigenvector matrix based on the affinity matrix
#' @param numberOfClusters maximum number of clusters for prediction
#'
#' @details Modified standard function present in kernlab to perform clustering with
#'          graph spectrum using standard version of K-Means
#'
#' @return K-Means Cluster Object
#'
#' @author Luis Gustavo Uzai
#'
#' @importFrom stats kmeans
#'
getSpectralClusters <- function(eigenvectorMatrix, numberOfClusters = 2) {
    smallestEigenvectors <- eigenvectorMatrix$vectors[,
        (ncol(eigenvectorMatrix$vectors) - numberOfClusters + 1):ncol(eigenvectorMatrix$vectors)]
    clusterObject <- stats::kmeans(smallestEigenvectors, centers = numberOfClusters, nstart = 200)
    return(clusterObject)
}