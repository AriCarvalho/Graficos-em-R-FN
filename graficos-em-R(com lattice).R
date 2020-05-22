#--- Gráficos com Lattice ---
library(lattice)

setwd("E:/Local/RlangWorkspace/graficos-em-R-FN")

movies <- read.csv("movies.csv")
#head(movies)

table <- table(movies$Rating)

ratings <- as.data.frame(table)

names(ratings)[1] <- "Rating"
names(ratings)[2] <- "Count"

#print(ratings)


# dotplot(
#   x =  Rating ~ Count,
#   data = ratings,
#   main = "Filmes por pontuação",
#   ylab = "Pontuação")

#X
#histogram(
#  x = ~Rating,
#  data = movies,
#  main = "Porcentagem de filmes por pontuação")


barchart(
  x = Count ~ Rating,
  data = ratings,
  main = "Filmes por pontuação",
  xlab = "Pontuação")