#-------------------- FaceAll --------------------

timeSeries <- FaceAll[, 2:132]
classes <- cpts(cpt.meanvar(as.numeric(unlist(FaceAll[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

FaceAll.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ElectricDevices --------------------

timeSeries <- ElectricDevices[, 2:97]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ElectricDevices[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ElectricDevices.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ECG200 --------------------

timeSeries <- ECG200[, 2:97]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ECG200[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ECG200.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Yoga --------------------

timeSeries <- Yoga[, 2:427]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Yoga[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Yoga.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Wine --------------------

timeSeries <- Wine[, 2:235]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Wine[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Wine.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Earthquakes --------------------

timeSeries <- Earthquakes[, 2:513]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Earthquakes[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Earthquakes.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Coffee --------------------

timeSeries <- Coffee[, 2:287]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Coffee[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Coffee.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  BeetleFly --------------------

timeSeries <- BeetleFly[, 2:513]
classes <- cpts(cpt.meanvar(as.numeric(unlist(BeetleFly[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

BeetleFly.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  WormsTwoClass --------------------

timeSeries <- WormsTwoClass[, 2:901]
classes <- cpts(cpt.meanvar(as.numeric(unlist(WormsTwoClass[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

WormsTwoClass.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ArrowHead --------------------

timeSeries <- ArrowHead[, 2:252]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ArrowHead[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ArrowHead.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ShapesAll --------------------

timeSeries <- ShapesAll[, 2:513]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ShapesAll[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ShapesAll.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Computers --------------------

timeSeries <- Computers[, 2:721]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Computers[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Computers.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ToeSegmentation1 --------------------

timeSeries <- ToeSegmentation1[, 2:278]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ToeSegmentation1[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ToeSegmentation1.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Strawberry --------------------

timeSeries <- Strawberry[, 2:236]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Strawberry[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Strawberry.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  RefrigerationDevices --------------------

timeSeries <- RefrigerationDevices[, 2:721]
classes <- cpts(cpt.meanvar(as.numeric(unlist(RefrigerationDevices[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

RefrigerationDevices.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Phoneme --------------------

timeSeries <- Phoneme[, 2:1025]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Phoneme[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Phoneme.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  OliveOil --------------------

timeSeries <- OliveOil[, 2:571]
classes <- cpts(cpt.meanvar(as.numeric(unlist(OliveOil[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

OliveOil.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  SmallKitchenAppliances --------------------

timeSeries <- SmallKitchenAppliances[, 2:721]
classes <- cpts(cpt.meanvar(as.numeric(unlist(SmallKitchenAppliances[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

SmallKitchenAppliances.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  LargeKitchenAppliances --------------------

timeSeries <- LargeKitchenAppliances[, 2:721]
classes <- cpts(cpt.meanvar(as.numeric(unlist(LargeKitchenAppliances[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

LargeKitchenAppliances.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ShapeletSim --------------------

timeSeries <- ShapeletSim[, 2:501]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ShapeletSim[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ShapeletSim.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  Meat --------------------

timeSeries <- Meat[, 2:449]
classes <- cpts(cpt.meanvar(as.numeric(unlist(Meat[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

Meat.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)


#-------------------------------------------------------



#--------------------  BirdChicken --------------------

timeSeries <-BirdChicken[, 2:513]
classes <- cpts(cpt.meanvar(as.numeric(unlist(BirdChicken[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

BirdChicken.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  DistalPhalanxOutlineAgeGroup --------------------

timeSeries <- DistalPhalanxOutlineAgeGroup[, 2:81]
classes <- cpts(cpt.meanvar(as.numeric(unlist(DistalPhalanxOutlineAgeGroup[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

DistalPhalanxOutlineAgeGroup.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  ScreenType --------------------

timeSeries <- ScreenType[, 2:721]
classes <- cpts(cpt.meanvar(as.numeric(unlist(ScreenType[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

ScreenType.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------



#--------------------  synthetic_control --------------------

timeSeries <- synthetic_control[, 2:61]
classes <- cpts(cpt.meanvar(as.numeric(unlist(synthetic_control[, 1])), test.stat = 'Normal', method = 'PELT', penalty = "SIC"))

synthetic_control.Results <- TestAlgorithmsResults(timeSeries, classes)

rm(timeSeries)
rm(classes)

#-------------------------------------------------------