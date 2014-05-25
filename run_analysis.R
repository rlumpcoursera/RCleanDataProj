run_analysis <- function(dataDir,outfile) {
  
  # read data tables
  traindata <- read.table(paste0(dataDir,"/train/X_train.txt"))
  testdata <- read.table(paste0(dataDir,"/test/X_test.txt"))
  
  # merge train and test data tables
  alldata <- rbind(traindata,testdata)
  
  # get feature set
  features <- read.table(paste0(dataDir,"/features.txt"))
  
  # get vector of features of interest (ie. "std" and "mean: data)
  grep("std|mean",features[,2]) -> featuresOfInterest
  
  # remove freqMean which we do not want
  grep("meanFreq",features[,2]) -> removeFeature
  featuresOfInterest <- featuresOfInterest[!(featuresOfInterest %in% removeFeature)]
  
  # get subset of all data limited to interesting features (ie. "std" and "mean: data)
  alldata[,featuresOfInterest] -> alldataOfInterest
  
  # get subjects 
  trainsubjects <- read.table(paste0(dataDir,"/train/subject_train.txt"))
  testsubjects <- read.table(paste0(dataDir,"/test/subject_test.txt"))
  # merge subjects
  rbind(trainsubjects,testsubjects) -> allsubjects
  
  # get actvities
  trainactivtivites <- read.table(paste0(dataDir,"train/y_train.txt"))
  testactivities <- read.table(paste0(dataDir,"test/y_test.txt"))
  # merge activities
  rbind(trainactivtivites,testactivities) -> allactvities
  
  # get activities identifiers
  read.table(paste0(dataDir,"activity_labels.txt")) -> activities
  # now translate allactivities to frienldy "english" names (eg. WALKING, etc)
  activities[,2][match(allactvities[,1],activities[,1])] -> activitesByName
  
  # aggregate mean on subjects and activities to get final desired data content
  aggregate(alldataOfInterest,c(allsubjects,data.frame(activitesByName)),FUN=mean) -> finalDataFrame
  
  
  # get names of features of interest
  features[featuresOfInterest,][,2] -> featuresOfInterestNames
  featuresOfInterestNames
  
  # clean up names to what we want (ie. remove "()" and replace "-" with ".")
  gsub("[()]","",featuresOfInterestNames) -> featuresOfInterestNames
  gsub("-",".",featuresOfInterestNames) -> featuresOfInterestNames
  #paste Avg. at beginning
  paste0("Avg.",featuresOfInterestNames) -> featuresOfInterestNames
  
  # rename rrr colnames
  colnames(finalDataFrame) <- c("Subject", "Activity", featuresOfInterestNames)
  
  # write !!
  write.table(finalDataFrame,outfile)
}