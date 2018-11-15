filename <- "./benchmark_results/ArrowHead.xlsx"
wb <- createWorkbook(type="xlsx")


Ncol <- vapply(ArrowHead.Results$AMOC, length, 1L)
AMOC <- matrix(0, nrow = length(ArrowHead.Results$AMOC), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
AMOC[IJ] <- unlist(ArrowHead.Results$AMOC, use.names = FALSE)

colnames(AMOC) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(AMOC) <- c(1:252)
AMOC <- as.table(AMOC)

sheet <- createSheet(wb, sheetName = "AMOC")
xlsx.addTable(wb, sheet, as.data.frame.matrix(AMOC), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$BinSeg, length, 1L)
BinSeg <- matrix(0, nrow = length(ArrowHead.Results$BinSeg), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
BinSeg[IJ] <- unlist(ArrowHead.Results$BinSeg, use.names = FALSE)

colnames(BinSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(BinSeg) <- c(1:252)
BinSeg <- as.table(BinSeg)

sheet <- createSheet(wb, sheetName = "BinSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(BinSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$SegNeigh, length, 1L)
SegNeigh <- matrix(0, nrow = length(ArrowHead.Results$SegNeigh), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
SegNeigh[IJ] <- unlist(ArrowHead.Results$SegNeigh, use.names = FALSE)

colnames(SegNeigh) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(SegNeigh) <- c(1:252)
SegNeigh <- as.table(SegNeigh)

sheet <- createSheet(wb, sheetName = "SegNeigh")
xlsx.addTable(wb, sheet, as.data.frame.matrix(SegNeigh), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$PELT, length, 1L)
PELT <- matrix(0, nrow = length(ArrowHead.Results$PELT), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
PELT[IJ] <- unlist(ArrowHead.Results$PELT, use.names = FALSE)

colnames(PELT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(PELT) <- c(1:252)
PELT <- as.table(PELT)

sheet <- createSheet(wb, sheetName = "PELT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(PELT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$EDivisive, length, 1L)
EDivisive <- matrix(0, nrow = length(ArrowHead.Results$EDivisive), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDivisive[IJ] <- unlist(ArrowHead.Results$EDivisive, use.names = FALSE)

colnames(EDivisive) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDivisive) <- c(1:252)
EDivisive <- as.table(EDivisive)

sheet <- createSheet(wb, sheetName = "EDivisive")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDivisive), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$EDM, length, 1L)
EDM <- matrix(0, nrow = length(ArrowHead.Results$EDM), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
EDM[IJ] <- unlist(ArrowHead.Results$EDM, use.names = FALSE)

colnames(EDM) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(EDM) <- c(1:252)
EDM <- as.table(EDM)

sheet <- createSheet(wb, sheetName = "EDM")
xlsx.addTable(wb, sheet, as.data.frame.matrix(EDM), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$MFT, length, 1L)
MFT <- matrix(0, nrow = length(ArrowHead.Results$MFT), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
MFT[IJ] <- unlist(ArrowHead.Results$MFT, use.names = FALSE)

colnames(MFT) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(MFT) <- c(1:252)
MFT <- as.table(MFT)

sheet <- createSheet(wb, sheetName = "MFT")
xlsx.addTable(wb, sheet, as.data.frame.matrix(MFT), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$Breakfast, length, 1L)
Breakfast <- matrix(0, nrow = length(ArrowHead.Results$Breakfast), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Breakfast[IJ] <- unlist(ArrowHead.Results$Breakfast, use.names = FALSE)

colnames(Breakfast) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Breakfast) <- c(1:252)
Breakfast <- as.table(Breakfast)

sheet <- createSheet(wb, sheetName = "Breakfast")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Breakfast), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$gSeg, length, 1L)
gSeg <- matrix(0, nrow = length(ArrowHead.Results$gSeg), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
gSeg[IJ] <- unlist(ArrowHead.Results$gSeg, use.names = FALSE)

colnames(gSeg) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(gSeg) <- c(1:252)
gSeg <- as.table(gSeg)

sheet <- createSheet(wb, sheetName = "gSeg")
xlsx.addTable(wb, sheet, as.data.frame.matrix(gSeg), startCol=2)
xlsx.addLineBreak(sheet, 2)

Ncol <- vapply(ArrowHead.Results$SpecDetec, length, 1L)
Spec <- matrix(0, nrow = length(ArrowHead.Results$SpecDetec), ncol = max(Ncol))
IJ <- cbind(rep(seq_along(Ncol), times = Ncol), sequence(Ncol)) 
Spec[IJ] <- unlist(ArrowHead.Results$SpecDetec, use.names = FALSE)

colnames(Spec) <- c("ChangePoints", "VerdadeirosPositivo", "VerdadeirosNegativo", "FalsosPositivo", "FalsosNegativo", "Recall", "Specficity", "Precision", "FMeasure", "AverageRanking", "Accuracy", "Kappa")
rownames(Spec) <- c(1:252)
Spec <- as.table(Spec)

sheet <- createSheet(wb, sheetName = "SpecDetec")
xlsx.addTable(wb, sheet, as.data.frame.matrix(Spec), startCol=2)
xlsx.addLineBreak(sheet, 2)

saveWorkbook(wb, filename)