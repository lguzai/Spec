filename <- "./benchmark_results/Coffee.xlsx"
wb <- createWorkbook(type="xlsx")


Ncol <- vapply(Coffee.Results$AMOC, length, 1L)
AMOC <- matrix(0, nrow = length(Coffee.Results$AMOC), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
AMOC[IJ] <- unlist(Coffee.Results$AMOC, use.names = FALSE)

colnames(AMOC) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(AMOC) <- c(1:287)
AMOC <- as.table(AMOC)

sheet <- createSheet(wb, sheetName = "AMOC")
xlsx.addTable(wb, sheet, as.data.frame.matrix(AMOC), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$BinSeg, length, 1L)
BinSeg <- matrix(0, nrow = length(Coffee.Results$BinSeg), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
BinSeg[IJ] <- unlist(Coffee.Results$BinSeg, use.names = FALSE)

colnames(BinSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(BinSeg) <- c(1:287)
BinSeg <- as.table(BinSeg)

sheet <- createSheet(wb, sheetName = "BinSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(BinSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$SegNeigh, length, 1L)
SegNeigh <- matrix(0, nrow = length(Coffee.Results$SegNeigh), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
SegNeigh[IJ] <- unlist(Coffee.Results$SegNeigh, use.names = FALSE)

colnames(SegNeigh) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(SegNeigh) <- c(1:287)
SegNeigh <- as.table(SegNeigh)

sheet <- createSheet(wb, sheetName = "SegNeigh")
xlsx.addTable(wb, sheet, as.data.frame.matrix(SegNeigh), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$PELT, length, 1L)
PELT <- matrix(0, nrow = length(Coffee.Results$PELT), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
PELT[IJ] <- unlist(Coffee.Results$PELT, use.names = FALSE)

colnames(PELT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(PELT) <- c(1:287)
PELT <- as.table(PELT)

sheet <- createSheet(wb, sheetName = "PELT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(PELT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$EDivisive, length, 1L)
EDivisive <- matrix(0, nrow = length(Coffee.Results$EDivisive), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDivisive[IJ] <- unlist(Coffee.Results$EDivisive, use.names = FALSE)

colnames(EDivisive) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDivisive) <- c(1:287)
EDivisive <- as.table(EDivisive)

sheet <- createSheet(wb, sheetName = "EDivisive")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDivisive), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$EDM, length, 1L)
EDM <- matrix(0, nrow = length(Coffee.Results$EDM), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDM[IJ] <- unlist(Coffee.Results$EDM, use.names = FALSE)

colnames(EDM) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDM) <- c(1:287)
EDM <- as.table(EDM)

sheet <- createSheet(wb, sheetName = "EDM")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDM), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$MFT, length, 1L)
MFT <- matrix(0, nrow = length(Coffee.Results$MFT), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
MFT[IJ] <- unlist(Coffee.Results$MFT, use.names = FALSE)

colnames(MFT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(MFT) <- c(1:287)
MFT <- as.table(MFT)

sheet <- createSheet(wb, sheetName = "MFT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(MFT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$Breakfast, length, 1L)
Breakfast <- matrix(0, nrow = length(Coffee.Results$Breakfast), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Breakfast[IJ] <- unlist(Coffee.Results$Breakfast, use.names = FALSE)

colnames(Breakfast) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Breakfast) <- c(1:287)
Breakfast <- as.table(Breakfast)

sheet <- createSheet(wb, sheetName = "Breakfast")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Breakfast), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$gSeg, length, 1L)
gSeg <- matrix(0, nrow = length(Coffee.Results$gSeg), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
gSeg[IJ] <- unlist(Coffee.Results$gSeg, use.names = FALSE)

colnames(gSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(gSeg) <- c(1:287)
gSeg <- as.table(gSeg)

sheet <- createSheet(wb, sheetName = "gSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(gSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(Coffee.Results$SpecDetec, length, 1L)
Spec <- matrix(0, nrow = length(Coffee.Results$SpecDetec), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Spec[IJ] <- unlist(Coffee.Results$SpecDetec, use.names = FALSE)

colnames(Spec) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Spec) <- c(1:287)
Spec <- as.table(Spec)

sheet <- createSheet(wb, sheetName = "SpecDetec")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Spec), startCol=2)
xlsx.addLineBreak(sheet, 2)

saveWorkbook(wb, filename)