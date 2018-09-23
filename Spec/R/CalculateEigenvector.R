"%^%" <- function(matrixValues, power)
    with(eigen(matrixValues), vectors %*% (values ^ power * solve(vectors)))

#' @title Calculate the eigenvector of the affinity matrix
#' @name generateEigenvectorMatrix
#'
#' @description Calculate the eigenvector of the affinity matrix
#'
#' @param affinityMatrix Affinity matrix based on the similarity matrix 
#'        based on key and value matrix of the  time series 
#'
#' @details Calculates the laplacian matrix based on the affinity matrix and 
#'          calculates the auto values of the graph with the eigen function
#'
#' @return Eigenvector matrix based on the affinity matrix
#'
#' @author Luis Gustavo Uzai
#'
generateEigenvectorMatrix <- function(affinityMatrix) {
    degreeMatrix <- diag(apply(affinityMatrix, 1, sum))
    laplacianGraph <- degreeMatrix - affinityMatrix

    return(eigen(laplacianGraph, symmetric = TRUE))
}