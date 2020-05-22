#--- Gráfico de Barras ----
library(ggplot2)
library(maps)


df <- data.frame(name = c("a","b","c"),
                value = c(1,2,3))

#print(df)

barplot(
  names=df$name,
  height =df$value,
  col = "skyblue",
  main = "Gráfico de barras",
  xlab = "Letra",
  ylab = "Valor")
