#' @title Calculate Gaussian Kernel 
#' @name gaussianKernel
#'
#' @description Measure of similarity between two points represented by x1 and x2
#'
#' @param x1 first valor to computate
#' @param x2 second valor to computate
#' @param alpha Alpha Measure
#'
#' @details Measure of similarity between two points represented by x1 and x2
#'
#' @return Measure of similarity between two points.
#'
#' @author Luis Gustavo Uzai
#'
gaussianKernel <- function(x1, x2, alpha = 1) {
    return(exp(-alpha * norm(as.matrix(x1 - x2), type = "F")))
}

#' @title Calculate Similarity Matrix
#' @name generateSimilarityMatrix
#'
#' @description Use some similarity measure to calculate the similarity matrix
#'
#' @param data Key and value matrix of a time series
#' @param similarityMeasure Measure of similarity between two points represented by x1 and x2
#'
#' @details Use some similarity measure to calculate the similarity matrix
#'
#' @return Matrix of similarity calculated from the key and value matrix.
#'
#' @author Luis Gustavo Uzai
#'
generateSimilarityMatrix <- function(data, similarityMeasure) {
    rowNumber <- nrow(data)
    similarityMatrix <- matrix(rep(NA, rowNumber ^ 2), ncol = rowNumber)

    for (i in 1:rowNumber) {
        for (j in 1:rowNumber) {
            similarityMatrix[i, j] <- similarityMeasure(data[i,], data[j,])
        }
    }

    return(similarityMatrix)
}


#' @title Converts the time series to position and value matrix
#' @name convertToMatrixTimeSeries
#'
#' @description  Converts the time series to position and value matrix
#'
#' @param data List of values corresponding to the time series
#'
#' @details Gets a list of values of any size and creates a key and 
#'          value array of all positions
#'
#' @return The key matrix and value of the time series.
#'
#' @author Luis Gustavo Uzai
#'
#' @importFrom abind abind
#'
convertToMatrixTimeSeries <- function(data) {
    dataSize <- length(data)
    new.data <- as.numeric(unlist(data))
    new.data <- abind::abind(1:dataSize, new.data)
    new.data <- matrix(new.data, dataSize, 2)
    return(new.data)
}