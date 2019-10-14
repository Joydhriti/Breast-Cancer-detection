data=read.csv("wdbc.data", header = F)

##..... datapreprocessing......#
colnames(data)[2]= "disease"
library(caTools)
set.seed(123)
split= sample.split(data$disease, SplitRatio = .70)
training = subset(data, split==TRUE)
test = subset(data, split== FALSE)



#......Random Forest Model.....#
library(randomForest)
set.seed(1234)
classifier = randomForest(formula= disease ~.,
                           data = training, ntree=100, mtry=5,
                           importance = TRUE, type = "classification")

predTest <- predict(classifier, test, type = "class")
mean(predTest == test$disease)                    
table(predTest,test$disease)  


#........ SVM Model........#
library(e1071)
classifier_svm = svm(formula = disease ~.,
                     data = training, type = "C-classification",
                     kernel= "linear")
pred_svm <- predict(classifier_svm, test, type = "class")
mean(pred_svm == test$disease)                    
table(pred_svm,test$disease)  
