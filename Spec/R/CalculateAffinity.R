#' @title Calculate the affinity matrix based on the similarity matrix
#' @name calculateAffinityMatrix
#'
#' @description  Calculate the affinity matrix based on the similarity matrix
#'
#' @param similarityMatrix Matrix of similarity between all points in the time series
#' @param neighboorsNumber Number of neighbors to consider affinity between nodes
#'
#' @details Calculate the affinity matrix based on the similarity matrix
#'          If the number of neighbors is equal to or greater than the 
#'          similarity matrix then the similarity and affinity matrix are equal
#'
#' @return Affinity matrix based on the similarity matrix
#'
#' @author Luis Gustavo Uzai
#'
calculateAffinityMatrix <- function(similarityMatrix, neighboorsNumber = 2) {
    sizeSM <- length(similarityMatrix[, 1])

    if (neighboorsNumber >= sizeSM) {
        affinityMatrix <- similarityMatrix
    } else {
        affinityMatrix <- matrix(rep(0, sizeSM ^ 2), ncol = sizeSM)

        for (position in 1:sizeSM) {
            best.similarities <- sort(similarityMatrix[position,],
                decreasing = TRUE)[1:neighboorsNumber]

            for (mostSimilar in best.similarities) {
                mostSimilarPosition <- which(similarityMatrix[position,] == mostSimilar)
                affinityMatrix[position, mostSimilarPosition] <-
                    similarityMatrix[position, mostSimilarPosition]
                affinityMatrix[mostSimilarPosition, position] <-
                    similarityMatrix[position, mostSimilarPosition]
            }
        }
    }

    return(affinityMatrix)
}