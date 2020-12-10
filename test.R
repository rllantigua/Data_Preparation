library(arules)
library(ggplot2)
library(Matrix)
library(plotly)                    # Load ggplot2 package
library(GGally)
library(ggpubr)
library(ggplot2)
library(purrr)

rules = apriori(titanic.raw)
inspect(rules)

B = as.matrix(data.frame(c(4,7,-1,8), c(-5,-2,4,2), c(-1,3,-3,6)))

rankMatrix(B)

svd(B)
A = as.matrix(data.frame(c(5,4,5,0,0,1), c(5,5,4,0,0,1), c(0,1,1,4,5,4), c(0,1,1,4,5,4), c(1,0,0,4,5,4)))


colnames(A) <- c("RamboII","Rocky IV","Harry Potter", "Lord of the Ring", "Game of Throns")
rownames(A) <- c("Bart","Michael","Tim","Sophie","Victor","Laura")

A

A.svd <- svd(t(A))
A.svd

rankMatrix(A)


head(diabetes.cl)

diab.sc <- scale(diabetes.cl[1:8])
head(diab.sc)


A.svd <- svd(diab.sc, nv = 8)
A.svd

library(Matrix)

R <- cor(diab.sc, method = "pearson")

rankMatrix(t(diab.sc))


A.svd <- svd(t(diab.sc))
A.svd

head(iris)
iris.sdv <- svd(iris[1:4])   
iris.sdv$d


rankMatrix(iris[1:4])
