#--- Gráfico de barras (com ggplot2)----
library(ggplot2)

df <- data.frame(name=c("a","b","c"),
                 value=c(1,2,3))

# ggplot(data=df,
#        aes(x=name,
#            y=value))+
#        geom_point()+
#        ggtitle("Grafico")+
#        xlab("Name")+
#        ylab("Value")

ggplot(data=df,
       aes(x=name,y=value))+
       geom_bar(stat = "identity",
           fill="grey")+
       ggtitle("Grafico")+
       xlab("Name")+
       ylab("Value")