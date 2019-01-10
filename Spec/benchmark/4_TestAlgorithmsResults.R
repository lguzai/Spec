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

    AMOC.RankingResults_5 <- list()
    binseg.RankingResults_5 <- list()
    SegNeigh.RankingResults_5 <- list()
    Pelt.RankingResults_5 <- list()
    eDivisive.RankingResults_5 <- list()
    EDM.RankingResults_5 <- list()
    MFT.RankingResults_5 <- list()
    Breakfast.RankingResults_5 <- list()
    gSeg.RankingResults_5 <- list()
    SpecDetec.RankingResults_5 <- list()

    AMOC.RankingResults_10 <- list()
    binseg.RankingResults_10 <- list()
    SegNeigh.RankingResults_10 <- list()
    Pelt.RankingResults_10 <- list()
    eDivisive.RankingResults_10 <- list()
    EDM.RankingResults_10 <- list()
    MFT.RankingResults_10 <- list()
    Breakfast.RankingResults_10 <- list()
    gSeg.RankingResults_10 <- list()
    SpecDetec.RankingResults_10 <- list()

    count <- 0
    seriesSize <- ncol(timeSeries)
	
	for(i in 1:ncol(timeSeries)) {
		
        count <- count + 1
        print(paste("Série ", toString(count), " / ", toString(seriesSize), toString(Sys.time())))

		timeSerie <- as.numeric(unlist(timeSeries[, count]))

		#AMOC
		AMOC <- cpt.meanvar(timeSerie, penalty="MBIC", pen.value=0, method="AMOC",test.stat="Normal", class=TRUE, param.estimates=TRUE,minseglen=1)
		AMOC.ChangePoints <- cpts(AMOC)
        AMOC.RankingResults[[count]] <- RankingResults(cpts(AMOC), classes, length(timeSerie), 0)
        AMOC.RankingResults_5[[count]] <- RankingResults(cpts(AMOC), classes, length(timeSerie), 5)
        AMOC.RankingResults_10[[count]] <- RankingResults(cpts(AMOC), classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado AMOC", toString(Sys.time())))

		#BinSeg 
		binseg <- cpt.meanvar(timeSerie,test.stat='Normal',method='BinSeg',penalty="SIC")
		binseg.ChangePoints <- cpts(binseg)
        binseg.RankingResults[[count]] <- RankingResults(cpts(binseg), classes, length(timeSerie), 0)
        binseg.RankingResults_5[[count]] <- RankingResults(cpts(binseg), classes, length(timeSerie), 5)
        binseg.RankingResults_10[[count]] <- RankingResults(cpts(binseg), classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado BinSeg", toString(Sys.time())))

		#SegNeigh
		SegNeigh <- cpt.meanvar(timeSerie,test.stat='Normal',method='SegNeigh',penalty="SIC")
		SegNeigh.ChangePoints <- cpts(SegNeigh)
        SegNeigh.RankingResults[[count]] <- RankingResults(cpts(SegNeigh), classes, length(timeSerie), 0)
        SegNeigh.RankingResults_5[[count]] <- RankingResults(cpts(SegNeigh), classes, length(timeSerie), 5)
        SegNeigh.RankingResults_10[[count]] <- RankingResults(cpts(SegNeigh), classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado SegNeigh", toString(Sys.time())))

		#PELT
		Pelt <- cpt.meanvar(timeSerie,test.stat='Normal',method='PELT',penalty="SIC", pen.value=0.01)
		Pelt.ChangePoints <- cpts(Pelt)
        Pelt.RankingResults[[count]] <- RankingResults(cpts(Pelt), classes, length(timeSerie), 0)
        Pelt.RankingResults_5[[count]] <- RankingResults(cpts(Pelt), classes, length(timeSerie), 5)
        Pelt.RankingResults_10[[count]] <- RankingResults(cpts(Pelt), classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado PELT", toString(Sys.time())))

		#E-Divisive 
		eDivisive <- e.divisive(as.matrix(timeSerie), alpha=1)
		eDivisive.ChangePoints <- eDivisive$estimates
        eDivisive.RankingResults[[count]] <- RankingResults(eDivisive$estimates, classes, length(timeSerie), 0)
        eDivisive.RankingResults_5[[count]] <- RankingResults(eDivisive$estimates, classes, length(timeSerie), 5)
        eDivisive.RankingResults_10[[count]] <- RankingResults(eDivisive$estimates, classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado E-Divisive", toString(Sys.time())))

		#EDM 
		EDM <- breakout(timeSerie, method='multi', beta=.001, degree=1, plot=TRUE)
		EDM.ChangePoints <- EDM$loc
        EDM.RankingResults[[count]] <- RankingResults(EDM$loc, classes, length(timeSerie), 0)
        EDM.RankingResults_5[[count]] <- RankingResults(EDM$loc, classes, length(timeSerie), 5)
        EDM.RankingResults_10[[count]] <- RankingResults(EDM$loc, classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado EDM", toString(Sys.time())))

		#MFT
        MFT <- MFT.mean(timeSerie, print.output = FALSE, plot.CPD = FALSE, main = FALSE, plot.Q = FALSE, plot.M = FALSE,
                        plot.h = FALSE, plot.mean = FALSE, plot.cp = FALSE, plot.process = FALSE)
		MFT.ChangePoints <- MFT$SWD[[1]]
        MFT.RankingResults[[count]] <- RankingResults(MFT$SWD[[1]], classes, length(timeSerie), 0)
        MFT.RankingResults_5[[count]] <- RankingResults(MFT$SWD[[1]], classes, length(timeSerie), 5)
        MFT.RankingResults_10[[count]] <- RankingResults(MFT$SWD[[1]], classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado MFT", toString(Sys.time())))

		#Breakfast
		Breakfast <- hybrid.cpt(timeSerie)
		Breakfast.ChangePoints <- MFT$cpt
        Breakfast.RankingResults[[count]] <- RankingResults(MFT$cpt, classes, length(timeSerie), 0)
        Breakfast.RankingResults_5[[count]] <- RankingResults(MFT$cpt, classes, length(timeSerie), 5)
        Breakfast.RankingResults_10[[count]] <- RankingResults(MFT$cpt, classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado Breakfast", toString(Sys.time())))
		
		#gSeg
        gSeg.RankingResults[[count]] <- RankingResults(c(0), classes, length(timeSerie), 0)
        gSeg.RankingResults_5[[count]] <- RankingResults(c(0), classes, length(timeSerie), 5)
        gSeg.RankingResults_10[[count]] <- RankingResults(c(0), classes, length(timeSerie), 10)
		gSeg.ChangePoints <- c(0)
			
		tryCatch(
		{
			gSeg.dist <-  dist(timeSerie)
			gSeg.tree <-  mstree(gSeg.dist)
			gSeg.gseg2 <- gseg2(length(timeSerie), gSeg.tree, statistics=c("all","o","w","g","m"), n0=0.05*n, n1=0.95*n, pval.appr=TRUE, skew.corr=TRUE, pval.perm=FALSE, B=100)
            gSeg.RankingResults[[count]] <- RankingResults(gSeg.gseg2$scanZ$max.type$tauhat, classes, length(timeSerie), 0)
            gSeg.RankingResults_5[[count]] <- RankingResults(gSeg.gseg2$scanZ$max.type$tauhat, classes, length(timeSerie), 5)
            gSeg.RankingResults_10[[count]] <- RankingResults(gSeg.gseg2$scanZ$max.type$tauhat, classes, length(timeSerie), 10)
			gSeg.ChangePoints <- gSeg.gseg2$scanZ$max.type$tauhat
		},
		error=function(cond) {
        })

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado gSeg", toString(Sys.time())))
		
		#SpecDetec
        SpecDetec <- Spec(timeSerie, neighboorsNumber = 6, tolerance = 0.005, estimationChangePointsNumber = length(classes))
        SpecDetec.ChangePoints <- SpecDetec
        SpecDetec.RankingResults[[count]] <- RankingResults(SpecDetec.ChangePoints, classes, length(timeSerie), 0)
        SpecDetec.RankingResults_5[[count]] <- RankingResults(SpecDetec.ChangePoints, classes, length(timeSerie), 5)
        SpecDetec.RankingResults_10[[count]] <- RankingResults(SpecDetec.ChangePoints, classes, length(timeSerie), 10)

        print(paste("Série ", toString(count), " / ", toString(seriesSize), " Finalizado SpecDetec", toString(Sys.time())))
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
        SpecDetec = SpecDetec.RankingResults,
        AMOC_5 = AMOC.RankingResults_5,
        BinSeg_5 = binseg.RankingResults_5,
        SegNeigh_5 = SegNeigh.RankingResults_5,
        PELT_5 = Pelt.RankingResults_5,
        EDivisive_5 = eDivisive.RankingResults_5,
        EDM_5 = EDM.RankingResults_5,
        MFT_5 = MFT.RankingResults_5,
        Breakfast_5 = Breakfast.RankingResults_5,
        gSeg_5 = gSeg.RankingResults_5,
        SpecDetec_5 = SpecDetec.RankingResults_5,
        AMOC_10 = AMOC.RankingResults_10,
        BinSeg_10 = binseg.RankingResults_10,
        SegNeigh_10 = SegNeigh.RankingResults_10,
        PELT_10 = Pelt.RankingResults_10,
        EDivisive_10 = eDivisive.RankingResults_10,
        EDM_10 = EDM.RankingResults_10,
        MFT_10 = MFT.RankingResults_10,
        Breakfast_10 = Breakfast.RankingResults_10,
        gSeg_10 = gSeg.RankingResults_10,
        SpecDetec_10 = SpecDetec.RankingResults_10
	)
	
	return (result)
}