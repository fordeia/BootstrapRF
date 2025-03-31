library(randomForest)
set.seed(1237)
iris.rg <- randomForest(Sepal.Length ~ ., data=iris, importance=TRUE,
                        proximity=TRUE)

sqrt(sum((iris.rg$predicted - iris$Sepal.Length)^2) / nrow(iris))
