dataSetUCR_TS_Archive_Location <- './TSC' #source: http://timeseriesclassification.com/TSC.zip date: 2018-11-08

#1-Import FaceAll
FaceAll <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/FaceAll/FaceAll_TEST.txt", sep = ""), col_names = FALSE)

#2-Import ElectricDevices
ElectricDevices <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ElectricDevices/ElectricDevices_TEST.txt", sep = ""), col_names = FALSE)

#3-Import ECG200
ECG200 <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ECG200/ECG200_TEST.txt", sep = ""), col_names = FALSE)

#4-Import Yoga
Yoga <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/yoga/yoga_TEST.txt", sep = ""), col_names = FALSE)

#5-Import Wine
Wine <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Wine/Wine_TEST.txt", sep = ""), col_names = FALSE)

#6-Import Earthquakes
Earthquakes <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Earthquakes/Earthquakes_TEST.txt", sep = ""), col_names = FALSE)

#7-Import Coffee
Coffee <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Coffee/Coffee_TEST.txt", sep = ""), col_names = FALSE)

#8-Import BeetleFly
BeetleFly <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/BeetleFly/BeetleFly_TEST.txt", sep = ""), col_names = FALSE)

#9-Import WormsTwoClass
WormsTwoClass <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/WormsTwoClass/WormsTwoClass_TEST.txt", sep = ""), col_names = FALSE)

#10-Import ArrowHead
ArrowHead <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ArrowHead/ArrowHead_TEST.txt", sep = ""), col_names = FALSE)

#11-Import ShapesAll
ShapesAll <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ShapesAll/ShapesAll_TEST.txt", sep = ""), col_names = FALSE)

#12-Import Computers
Computers <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Computers/Computers_TEST.txt", sep = ""), col_names = FALSE)

#13-Import ToeSegmentation1
ToeSegmentation1 <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ToeSegmentation1/ToeSegmentation1_TEST.txt", sep = ""), col_names = FALSE)

#14-Import Strawberry
Strawberry <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Strawberry/Strawberry_TEST.txt", sep = ""), col_names = FALSE)

#15-Import RefrigerationDevices
RefrigerationDevices <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/RefrigerationDevices/RefrigerationDevices_TEST.txt", sep = ""), col_names = FALSE)

#16-Import Phoneme
Phoneme <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Phoneme/Phoneme_TEST.txt", sep = ""), col_names = FALSE)

#17-Import OliveOil
OliveOil <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/OliveOil/OliveOil_TEST.txt", sep = ""), col_names = FALSE)

#18-Import SmallKitchenAppliances
SmallKitchenAppliances <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/SmallKitchenAppliances/SmallKitchenAppliances_TEST.txt", sep = ""), col_names = FALSE)

#19-Import LargeKitchenAppliances
LargeKitchenAppliances <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/LargeKitchenAppliances/LargeKitchenAppliances_TEST.txt", sep = ""), col_names = FALSE)

#20-Import ShapeletSim
ShapeletSim <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ShapeletSim/ShapeletSim_TEST.txt", sep = ""), col_names = FALSE)

#21-Import Meat
Meat <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/Meat/Meat_TEST.txt", sep = ""), col_names = FALSE)

#22-Import BirdChicken
BirdChicken <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/BirdChicken/BirdChicken_TEST.txt", sep = ""), col_names = FALSE)

#23-Import DistalPhalanxOutlineAgeGroup
DistalPhalanxOutlineAgeGroup <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/DistalPhalanxOutlineAgeGroup/DistalPhalanxOutlineAgeGroup_TEST.txt", sep = ""), col_names = FALSE)

#24-Import ScreenType
ScreenType <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/ScreenType/ScreenType_TEST.txt", sep = ""), col_names = FALSE)

#25-Import synthetic_control
synthetic_control <- read_csv(paste(dataSetUCR_TS_Archive_Location, "/SyntheticControl/synthetic_control_TEST.txt", sep = ""), col_names = FALSE)