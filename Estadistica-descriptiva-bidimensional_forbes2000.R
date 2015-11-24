# Analisis bidimensional
#Comparacion variable continua seg?n una discreta. Se recuerda de category es un factor
#Calculo de valores por grupo
tapply(Forbes2000$sales,Forbes2000$category, "mean")
tapply(Forbes2000$sales,Forbes2000$category, "summary")
boxplot(Forbes2000$sales~Forbes2000$category,col=3)
#Comparacion de variables continuas
cor(Forbes2000[,5:8])
cov(Forbes2000[,5:8])
#Se puede trabajar con dos variasble continuas convirtiendo una en un factor
factsl=factor(cut(Forbes2000$sales, breaks=0+30*(0:10)))
tapply(Forbes2000$sales,factsl, "summary")
boxplot(Forbes2000$sales~factsl,col=3)
#Graficas bidimensionales
#scatter plot, con colores segun un factor
plot(Forbes2000$sales,Forbes2000$profits, col=Forbes2000$category)
plot(Forbes2000$sales,Forbes2000$profits, col=factsl)
#scatter plot, con colores  y formas segun un factor
plot(Forbes2000$sales,Forbes2000$profits, col=Forbes2000$category, pch=as.numeric(Forbes2000$category))
#scatter plot en global, se toman las variables y se da el color que se quiere
pairs(Forbes2000[,5:8],col=Forbes2000$category)




 
