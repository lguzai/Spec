TestAlgorithmsResults <- function(timeSeries, classes) {

	AMOC.RankingResults <- list()
	binseg.RankingResults <- list()
	SegNeigh.RankingResults <- list()
	Pelt.RankingResults <- list()
	eDivisive.RankingResults <- list()
	EDM.RankingResults <- list()
	MFT.RankingResults <- list()
	Breakfast.RankingResults <- list()
	gSeg.RankingResults <- list()
	SpecDetec.RankingResults <- list()
	count <- 0
	
	for(i in 1:ncol(timeSeries)) {
		
		count <- count + 1
		timeSerie <- as.numeric(unlist(timeSeries[, count]))
	
		#AMOC
		AMOC <- cpt.meanvar(timeSerie, penalty="MBIC", pen.value=0, method="AMOC",test.stat="Normal", class=TRUE, param.estimates=TRUE,minseglen=1)
		AMOC.ChangePoints <- cpts(AMOC)
		AMOC.RankingResults[[count]] <- RankingResults(cpts(AMOC), classes)

		#BinSeg 
		binseg <- cpt.meanvar(timeSerie,test.stat='Normal',method='BinSeg',penalty="SIC")
		binseg.ChangePoints <- cpts(binseg)
		binseg.RankingResults[[count]] <- RankingResults(cpts(binseg), classes)

		#SegNeigh
		SegNeigh <- cpt.meanvar(timeSerie,test.stat='Normal',method='SegNeigh',penalty="SIC")
		SegNeigh.ChangePoints <- cpts(SegNeigh)
		SegNeigh.RankingResults[[count]] <- RankingResults(cpts(SegNeigh), classes)

		#PELT
		Pelt <- cpt.meanvar(timeSerie,test.stat='Normal',method='PELT',penalty="SIC", pen.value=0.01)
		Pelt.ChangePoints <- cpts(Pelt)
		Pelt.RankingResults[[count]] <- RankingResults(cpts(Pelt), classes)

		#E-Divisive 
		eDivisive <- e.divisive(as.matrix(timeSerie), alpha=1)
		eDivisive.ChangePoints <- eDivisive$estimates
		eDivisive.RankingResults[[count]] <- RankingResults(eDivisive$estimates, classes)

		#EDM 
		EDM <- breakout(timeSerie, method='multi', beta=.001, degree=1, plot=TRUE)
		EDM.ChangePoints <- EDM$loc
		EDM.RankingResults[[count]] <- RankingResults(EDM$loc, classes)

		#MFT
		MFT <- MFT.mean(timeSerie)
		MFT.ChangePoints <- MFT$SWD[[1]]
		MFT.RankingResults[[count]] <- RankingResults(MFT$SWD[[1]], classes)

		#Breakfast
		Breakfast <- hybrid.cpt(timeSerie)
		Breakfast.ChangePoints <- MFT$cpt
		Breakfast.RankingResults[[count]] <- RankingResults(MFT$cpt, classes)
		
		#gSeg
		gSeg.RankingResults[[count]] <- RankingResults(c(0), classes)
		gSeg.ChangePoints <- c(0)
			
		tryCatch(
		{
			gSeg.dist <-  dist(timeSerie)
			gSeg.tree <-  mstree(gSeg.dist)
			gSeg.gseg2 <- gseg2(length(timeSerie), gSeg.tree, statistics=c("all","o","w","g","m"), n0=0.05*n, n1=0.95*n, pval.appr=TRUE, skew.corr=TRUE, pval.perm=FALSE, B=100)
			gSeg.RankingResults[[count]] <- RankingResults(gSeg.gseg2$scanZ$max.type$tauhat, classes)
			gSeg.ChangePoints <- gSeg.gseg2$scanZ$max.type$tauhat
		},
		error=function(cond) {
		})
		
		#SpecDetec
        SpecDetec <- spec(timeSerie)
        SpecDetec.ChangePoints <- SpecDetec
        SpecDetec.RankingResults[[count]] <- RankingResults(SpecDetec.ChangePoints, classes)
	}

	result <- list(
		AMOC = AMOC.RankingResults,
		BinSeg = binseg.RankingResults,
		SegNeigh = SegNeigh.RankingResults,
		PELT = Pelt.RankingResults,
		EDivisive = eDivisive.RankingResults,
		EDM = EDM.RankingResults,
		MFT = MFT.RankingResults,
		Breakfast = Breakfast.RankingResults,
		gSeg = gSeg.RankingResults,
        SpecDetec = SpecDetec.RankingResults
	)
	
	return (result)
}