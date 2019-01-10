filename <- ".//benchmark_results//Wine.xlsx"
wb <- createWorkbook(type="xlsx")


Ncol <- vapply(Wine.Results$AMOC_10, length, 1L)
AMOC <- matrix(0, nrow = length(Wine.Results$AMOC_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
AMOC[IJ] <- unlist(Wine.Results$AMOC_10, use.names = FALSE)

colnames(AMOC) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(AMOC) <- c(1:235)
AMOC <- as.table(AMOC)

sheet <- createSheet(wb, sheetName = "AMOC")
xlsx.addTable(wb, sheet, as.data.frame.matrix(AMOC), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$BinSeg_10, length, 1L)
BinSeg <- matrix(0, nrow = length(Wine.Results$BinSeg_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
BinSeg[IJ] <- unlist(Wine.Results$BinSeg_10, use.names = FALSE)

colnames(BinSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(BinSeg) <- c(1:235)
BinSeg <- as.table(BinSeg)

sheet <- createSheet(wb, sheetName = "BinSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(BinSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$SegNeigh_10, length, 1L)
SegNeigh <- matrix(0, nrow = length(Wine.Results$SegNeigh_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
SegNeigh[IJ] <- unlist(Wine.Results$SegNeigh_10, use.names = FALSE)

colnames(SegNeigh) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(SegNeigh) <- c(1:235)
SegNeigh <- as.table(SegNeigh)

sheet <- createSheet(wb, sheetName = "SegNeigh")
xlsx.addTable(wb, sheet, as.data.frame.matrix(SegNeigh), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$PELT_10, length, 1L)
PELT <- matrix(0, nrow = length(Wine.Results$PELT_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
PELT[IJ] <- unlist(Wine.Results$PELT_10, use.names = FALSE)

colnames(PELT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(PELT) <- c(1:235)
PELT <- as.table(PELT)

sheet <- createSheet(wb, sheetName = "PELT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(PELT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$EDivisive_10, length, 1L)
EDivisive <- matrix(0, nrow = length(Wine.Results$EDivisive_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDivisive[IJ] <- unlist(Wine.Results$EDivisive_10, use.names = FALSE)

colnames(EDivisive) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDivisive) <- c(1:235)
EDivisive <- as.table(EDivisive)

sheet <- createSheet(wb, sheetName = "EDivisive")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDivisive), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$EDM_10, length, 1L)
EDM <- matrix(0, nrow = length(Wine.Results$EDM_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDM[IJ] <- unlist(Wine.Results$EDM_10, use.names = FALSE)

colnames(EDM) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDM) <- c(1:235)
EDM <- as.table(EDM)

sheet <- createSheet(wb, sheetName = "EDM")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDM), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$MFT_10, length, 1L)
MFT <- matrix(0, nrow = length(Wine.Results$MFT_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
MFT[IJ] <- unlist(Wine.Results$MFT_10, use.names = FALSE)

colnames(MFT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(MFT) <- c(1:235)
MFT <- as.table(MFT)

sheet <- createSheet(wb, sheetName = "MFT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(MFT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$Breakfast_10, length, 1L)
Breakfast <- matrix(0, nrow = length(Wine.Results$Breakfast_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Breakfast[IJ] <- unlist(Wine.Results$Breakfast_10, use.names = FALSE)

colnames(Breakfast) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Breakfast) <- c(1:235)
Breakfast <- as.table(Breakfast)

sheet <- createSheet(wb, sheetName = "Breakfast")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Breakfast), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$gSeg_10, length, 1L)
gSeg <- matrix(0, nrow = length(Wine.Results$gSeg_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
gSeg[IJ] <- unlist(Wine.Results$gSeg_10, use.names = FALSE)

colnames(gSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(gSeg) <- c(1:235)
gSeg <- as.table(gSeg)

sheet <- createSheet(wb, sheetName = "gSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(gSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Wine.Results$SpecDetec_10, length, 1L)
Spec <- matrix(0, nrow = length(Wine.Results$SpecDetec_10), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Spec[IJ] <- unlist(Wine.Results$SpecDetec_10, use.names = FALSE)

colnames(Spec) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Spec) <- c(1:235)
Spec <- as.table(Spec)

sheet <- createSheet(wb, sheetName = "SpecDetec")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Spec), startCol=2)
xlsx.addLineBreak(sheet, 2)

saveWorkbook(wb, filename)