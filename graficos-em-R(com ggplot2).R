
#--- Gráficos em R(com ggplot2) ----
library(ggplot2)

setwd("E:/Local/RlangWorkspace/graficos-em-R-FN")

movies <- read.csv("movies.csv")
#head(movies)

table <- table(movies$Rating)

ratings <- as.data.frame(table)

names(ratings)[1] <- "Rating"
names(ratings)[2] <- "Count"


ggplot(
  data = movies,
  aes(x=Rating))+
  geom_bar()+
  ggtitle("Quantidade de filmes por pontuação.")

# ggplot(
#   data = movies,
#   aes(x=Rating))+
#   geom_bar()+
#   coord_flip()+
#   ggtitle("Quantidade de filmes por pontuação")

# ggplot(
#   data = movies,
#   aes(x=Rating))+
#   geom_point(stat="Quantidade")+
#   coord_flip()+
#   ggtitle("Quantidade de filmes por pontuação")

# ggplot(
#   data = movies,
#   aes(x="",fill=Rating))+
#   geom_bar()+
#   coord_polar(theta = "y")+
#   ggtitle("Quantidade de filmes por Pontuação")+
#   ylab("")

# ggplot(
#   data = movies,
#   aes(x="",fill=Awards))+
#   geom_bar()+
#   coord_polar(theta = "y")+
#   ggtitle("Quantidade de filmes por premiação")+
#   ylab("")

