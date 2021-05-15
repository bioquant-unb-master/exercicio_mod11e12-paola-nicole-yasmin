library(vegan) 
library(MASS)
data(iris)
t(iris)
View(iris)
iris.mod <- iris[, 1:4]

# 1. Matriz:
i <- vegdist(iris.mod, method = "bray") 
i

# 2. Cluster hierarquico com Bray-Curtis
cluster1 <- hclust(i, method = "average")
plot(cluster1)
dendro.cluster1 <- as.dendrogram(cluster1) 
plot(dendro.cluster1)
rect.hclust(cluster1, h = 0.40)
