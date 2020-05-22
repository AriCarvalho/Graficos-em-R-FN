
#--- Gráfico em R nativo ----
setwd("E:/Local/RlangWorkspace/graficos-em-R-FN")

movies <- read.csv("movies.csv")
#head(movies)

par(mfrow = c(4,1)) # divide a tela pra colocar mais graficos

##X
#plot(
#  x = movies$Rating,
#  main = "Filmes por pontuação",
#  ylab ="Pontuação",
#  xlab="Quantidade de filmes")

##X
#plot(
#  x = movies$Rating,
#  horiz = TRUE,
#  main = "Filmes por pontuação",
#  ylab ="Pontuação",
#  xlab="Quantidade de filmes")

dotchart(x = table(movies$Rating),
   pch = 16,#character  que marca o ponto
   main = "Filmes por pontuação",
   ylab ="Pontuação",
   xlab="Quantidade de filmes")

pie(x = table(movies$Awards),
     clockwise = TRUE,
     main ="Filmes que ganharam prêmio")

# plot(
#   x = movies$Runtime,
#   y = rep(0,nrow(movies)),
#   main = "Distribuição da duração dos filmes",
#   xlab = "Duração",
#   ylab =  "",
#   yaxt = "n")

# plot(x = movies$Runtime,
#      y = rep(0,nrow(movies)),
#      main =  "Distribuição da duração dos filmes",
#      xlab = "Duração",
#      ylab =  "",
#      yaxt = "n",
#      pch=16,
#      col = rgb(0,0,0,0.1))

# plot(x = movies$Runtime,
#      y = jitter(rep(0,nrow(movies))),
#      main = "Distribuição da duração dos filmes",
#      xlab = "Duração",
#      ylab =  "",
#      yaxt = "n")

# boxplot(x = movies$Runtime,
#         horizontal = TRUE,
#         main = "Distribuição da duração dos filmes",
#         xlab = "Duração")

# hist(x = movies$Runtime,
#      main = "Distribuição da duração dos filmes",
#      xlab = "Duração")

hist(
     x = movies$Runtime,
     breaks = 30,
     main = "Distribuição da duração dos filmes",
     xlab = "Duração")

plot(x = density(movies$Runtime),
     main = "Distribuição da duração dos filmes",
     xlab = "Duração")


par(mfrow = c(1,1)) 
