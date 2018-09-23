#' @title Calculate change points with spectral cluster
#' @name Spec
#'
#' @description Calculate change point based on spectral clustering you have the option 
#'              to automatically calculate the number of clusters if this information 
#'              is not available
#'
#' @param data List of values corresponding to the time series
#' @param neighboorsNumber Number of neighbors to consider affinity between nodes
#' @param tolerance approximation to consider valid clusters, used only for calculation of 
#'        forecast of change points, default 0.01
#' @param maxNumberOfChangePoints maximum number of clusters for prediction : default 19
#' @param estimationChangePointsNumber predicted number of change points in the series, if null, 
#'        is automatically calculated: default null
#'
#' @details Calculate change point based on spectral clustering you have the option 
#'          to automatically calculate the number of clusters if this information 
#'          is not available. It uses the Gaussian Kernel for the calculation of 
#'          affinity matrix and Kmeans for the spectral cluster, however, several 
#'          other options can be used and the package must be customized to better 
#'          suit the use.
#'
#' @return Numerical array with the position of the change points in the time series
#'
#' @author Luis Gustavo Uzai
#'
#' @examples
#' data <- DEVICE1[, 1]
#' realChangePoints <- c(which(diff(DEVICE1$Class) != 0)) 
#' calculateChangePoints <- Spec(data, neighboorsNumber = 6, 
#'          tolerance = 0.005, estimationChangePointsNumber = 2)
#' minValue <- -99999
#' maxValue <- 99999
#' plot(data, type = "l", xlab = "x", ylab = "y")
#' for (r in 1:length(realChangePoints)) {
#'     lines(x = c(realChangePoints[r], realChangePoints[r]), 
#'           y = c(minValue, maxValue), lwd = 2, col = "red")
#' }
#' for (n in 1:length(calculateChangePoints)) {
#'  lines(x = c(calculateChangePoints[n], calculateChangePoints[n]), 
#'        y = c(minValue, maxValue), lwd = 2, col = "blue")
#' }
#'
#' @export
Spec <- function(data, neighboorsNumber = 5, tolerance = 0.01, maxNumberOfChangePoints = 19,
                estimationChangePointsNumber = NULL) {

    data <- convertToMatrixTimeSeries(data)
    similarityMatrix <- generateSimilarityMatrix(data, gaussianKernel)
    affinityMatrix <- calculateAffinityMatrix(similarityMatrix, neighboorsNumber)
    eigenvectorMatrix <- generateEigenvectorMatrix(affinityMatrix)

    if (is.null(estimationChangePointsNumber)) {
        clusterEstimateNumbers <- clusterEstimatetNumber(eigenvectorMatrix$values, tolerance,
            maxNumberOfChangePoints + 1)
    } else {
        clusterEstimateNumbers <- estimationChangePointsNumber + 1;
    }

    spectralClusters <- getSpectralClusters(eigenvectorMatrix, clusterEstimateNumbers)
    changePoints <- c(which(diff(spectralClusters$cluster) != 0))

    return(changePoints)
}

#' @title DEVICE1
#' @name DEVICE1
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE1' 

#' @title DEVICE2
#' @name DEVICE2
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE2' 

#' @title DEVICE3
#' @name DEVICE3
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE3' 

#' @title DEVICE4
#' @name DEVICE4
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE4' 

#' @title DEVICE5
#' @name DEVICE5
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE5' 

#' @title DEVICE6
#' @name DEVICE6
#' @docType data
#' @description Derivation of RefrigerationDevices of the UCR Time Series Classification Repository
#'              These problems were taken from data recorded as part of government sponsored study
#'              called Powering the Nation.  The intention was to collect behavioural data about 
#'              how consumers use electricity within the home to help reduce the UK's carbon 
#'              footprint. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'DEVICE6' 

#' @title FTIR1
#' @name FTIR1
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR1'

#' @title FTIR2
#' @name FTIR2
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR2' 

#' @title FTIR3
#' @name FTIR3
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR3' 

#' @title FTIR4
#' @name FTIR4
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR4' 

#' @title FTIR5
#' @name FTIR5
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR5' 

#' @title FTIR6
#' @name FTIR6
#' @docType data
#' @description Derivation of Meat of the UCR Time Series Classification Repository
#'              Food spectrographs are used in chemometrics to classify food types, a task that has 
#'              obvious applications in food safety and quality assurance. The classes are chicken, 
#'              pork and turkey. 
#' @format The format is:
#'         Value        Class
#'         1.063400     1
#'        -0.953410     1
#'        ...
#'        -0.596090     2 
#'        ...
'FTIR6'