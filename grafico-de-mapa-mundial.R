#--- Mapa do mundo ----
library(ggplot2)
library(maps)


ggplot()+
  borders(
  database="world",
  colour="grey60",
  fill="grey90") +
  ggtitle("Mapa do mundo")+
  xlab("")+
  ylab("")+
  theme(panel.background=element_blank(),
          axis.title.x=element_blank(),
          axis.text.x=element_blank(),
         axis.title.y =element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank())