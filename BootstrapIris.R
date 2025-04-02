library(randomForest)
set.seed(1237)
iris.rg <- randomForest(Sepal.Length ~ ., data=iris, importance=TRUE,
                        proximity=TRUE)

sqrt(sum((iris.rg$predicted - iris$Sepal.Length)^2) / nrow(iris))


set.seed(25)
bootdataIris=iris[sample(nrow(iris), 1000, replace=TRUE), ]

head(bootdataIris)
nrow(bootdataIris)
str(bootdataIris)

set.seed(25)
iris.rgBoot <- randomForest(Sepal.Length ~ ., data=bootdataIris, importance=TRUE,
                        proximity=TRUE)

sqrt(sum((iris.rgBoot$predicted - bootdataIris$Sepal.Length)^2) / nrow(bootdataIris))

