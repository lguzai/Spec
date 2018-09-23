RankingResults <- function(resultToTest, classes) {
	i <- 0
	numberOfChangePoints <- length(classes)
	VP <- NULL
	FN <- NULL
	FP <- NULL
	VN <- NULL

	while (i < numberOfChangePoints){
	 changePoint <- classes[i + 1]

	 if(changePoint %in% resultToTest){
		VP <- c(VP, classes[i + 1])
	 } else {
		FN <- c(FN, classes[i + 1])
	 }
	 
	 i <- i + 1
	}

	i <- 0
	while (i < length(resultToTest)){
	 changePoint <- resultToTest[i + 1]

	 if(!(changePoint %in% classes)){
		FP <- c(FP, resultToTest[i + 1])
	 }
	 
	 i <- i + 1
	}

	NonVN <- c(VP, FN, FP)
	indexAllValues <- which(timeSeries %in% timeSeries)

	VN <- indexAllValues[! indexAllValues %in% NonVN]

	if(is.null(VP)){
		nVP = 0
	} else {
		nVP = length(VP)
	}
	if(is.null(FN)){
		nFN = 0
	} else {
		nFN = length(FN)
	}
	if(is.null(FP)){
		nFP = 0
	} else {
		nFP = length(FP)
	}
	if(is.null(VN)){
		nVN = 0
	} else {
		nVN = length(VN)
	}
	
	if(nVP == 0){
		Recall = 0
		Precision = 0
		
		if(nVN == 0) {
			Accuracy = 0
			Specificity = 0
		} else {
			Accuracy <- (nVP + nVN) / (nVP + nVN + nFN + nFP)
			Specificity <- nVN / (nVN + nFP)
		}
	} else {
		if(nVN == 0) {
			Specificity = 0
		} else {
			Specificity <- nVN / (nVN + nFP)
		}

		Accuracy <- (nVP + nVN) / (nVP + nVN + nFN + nFP)
		Precision <- nVP / (nVP + nFP)
		Recall <- nVP / (nVP + nFN)
	}
	
	if((Precision + Recall) == 0){
		FMeasure <- 0
	} else {
		FMeasure <- (2 * Precision * Recall) / (Precision + Recall)
	}
	
	AverageRanking <- (Accuracy + Specificity + FMeasure) / 3
	
	PeVP <- ((nVP + nFP)/(nVP + nVN + nFN + nFP)) * ((nVP + nFN)/(nVP + nVN + nFN + nFP))
	PeVN <- ((nVN + nFN)/(nVP + nVN + nFN + nFP)) * ((nVN + nFP)/(nVP + nVN + nFN + nFP))
	Pe <- PeVP + PeVN
	
	Kappa <- (Accuracy - Pe) / (1 - Pe)
	
	result <- list(
		NumberRealChangePoints = numberOfChangePoints,
		VerdadeiroPositivo = nVP,
		VerdadeiroNegativo = nVN,
		FalsoPositivo = nFP,
		FalsoNegativo = nFN,
		Recall = Recall,
		Specificity = Specificity,
		Precision = Precision,
		FMeasure = FMeasure,
		AverageRanking = AverageRanking,
		Accuracy = Accuracy,
		Kappa = Kappa
	)
	
	return(result)
}