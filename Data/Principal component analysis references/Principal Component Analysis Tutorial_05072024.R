# Dumakude Nxumalo
# Last edited: 5 July 2024

rm(list=ls())
library(skimr) # descriptive stat package
library(corrplot) # visual correlation matrx

prac_data <- read.csv("~/insert path/pca_gsp.csv")[,-1] # removing the first column. Not needed.

#skim(prac_data) #Nice way to show descr stats 
#summary(prac_data) #Standard output

#x <- data.frame(cor(prac_data))
#corrplot(cor(prac_data))

# Estimations of principal components ----
PCA_1 <- princomp(prac_data,scores = TRUE,cor = TRUE) #estimation appproach 1
PCA_2 <- prcomp(prac_data,scale = TRUE) #estimation appproach 2

summary(PCA_1)
summary(PCA_2)

# Scree plot ----
# show importance of variances of principal compnents
plot(PCA_1,type="line") # remove type="line" in order to show histogram

# Loading ----
# the weights that are assigned to the different variables in the different principal components
PCA_1$loadings
PCA_2$rotation

# Score ----
# The composite measures estimated from the PCA across each principal components
PCA_1$scores
PCA_2$x
