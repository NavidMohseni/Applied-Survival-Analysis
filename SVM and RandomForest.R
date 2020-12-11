library(caret)
library(tidyverse)
library(randomForest)
library(e1071)
library(haven)
data <- read_spss("C:\\Users\\Asus\\Downloads\\ff.sav")
head(data)
glimpse(data)
data$C <- as.factor(data$C)
data$Gender <- as.factor(data$Gender)
data$Teethnumber <- as.factor(data$Teethnumber)

#Test and Train
data1 <- data %>% select(C, Age, Gender, Teethnumber)
set.seed(1234)
in_train <- createDataPartition(data1$C, p = 0.8, list = FALSE)
data1_train <- data1[in_train, ]
data1_test <- data1[-in_train,]

#SVM
classifier <- svm(formula = C ~ Age + Gender + Teethnumber, 
                  data = data1_train,
                  type = "C-classification",
                  kernal = "linear")

classifier
y_pred <- predict(classifier, newdata = data1_test)
y_pred
table(y_pred, data1_test$C)
confusionMatrix(y_pred, data1_test$C)



#for The whole dataset
data1
classifier1 <- svm(formula = C ~ Age + Gender + Teethnumber, 
                  data = data1,
                  type = "C-classification",
                  kernal = "linear")

classifier1



#Another way for SVM
grid <- expand.grid(C = c(0,0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2,5))
svm_Linear_Grid <- train(C ~ Age + Gender + Teethnumber, data = data1_train, method = "svmLinear",
                         preProcess = c("center", "scale"),
                         tuneGrid = grid,
                         tuneLength = 10)
svm_Linear_Grid
plot(svm_Linear_Grid)






#Random Forest
model1 <- randomForest(C ~ Age + Gender + Teethnumber, data = data1_train, importance = TRUE, ntree = 500)
model1
predict1 <- predict(model1, data = data1_train, type = "class")
table(predict1, data1_train$C)

model2 <- randomForest(C ~ Age + Gender + Teethnumber, data = data1_test, importance = TRUE)
model2
predict2 <- predict(model2, data = data1_test, type = "class")
table(predict2, data1_test$C)
mean(predict2 == data1_test$C)


model3 <- randomForest(C ~ Age + Gender + Teethnumber, data = data1, importance = TRUE, ntree = 500)
model3
