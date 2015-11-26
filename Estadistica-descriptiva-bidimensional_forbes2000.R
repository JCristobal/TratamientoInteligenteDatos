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
#scatter plot, con colores segun su categoría
categorias=unique(Forbes2000$category)
plot(Forbes2000$sales,Forbes2000$rank, col=Forbes2000$category)
legend('topright', legend=categorias, col = categorias, lty="solid", bty='n', cex=.50)
#scatter plot, con colores segun un factor
plot(Forbes2000$sales,Forbes2000$rank, col=factsl)

#scatter plot, con colores  y formas segun su categoria y VENTAS ("retalling" en cabeza, seguido de "Oil & gas operations" y "Consumer durables")
plot(Forbes2000$sales,Forbes2000$rank, col=Forbes2000$category, pch=as.numeric(Forbes2000$category))
legend('topright', legend=categorias, col = categorias, pch=as.numeric(categorias), bty='n', cex=.70)

#scatter plot, con colores  y formas para ver las BIENES según la categoria (predomina la "Banca")
plot(Forbes2000$assets,Forbes2000$rank, col=Forbes2000$category, pch=as.numeric(Forbes2000$category))
legend('topright', legend=categorias, col = categorias, pch=as.numeric(categorias), bty='n', cex=.70)

#scatter plot, con colores  y formas para ver las GANANCIAS según la categoria (parecido a ventas, muy agrupados entre 0-10 y con "Telecommunications services" con ganancias negativas (deudas?) ) 
plot(Forbes2000$profits,Forbes2000$rank, col=Forbes2000$category, pch=as.numeric(Forbes2000$category))
legend('topleft', legend=categorias, col = categorias, pch=as.numeric(categorias), bty='n', cex=.60)

#scatter plot, con colores  y formas para ver su VALOR DE MERCADO según la categoria (revela poco, muy agrupados entre 0-50 y con una empresa de "Conglomerates" con un valor muy destacado)
plot(Forbes2000$marketvalue,Forbes2000$rank, col=Forbes2000$category, pch=as.numeric(Forbes2000$category))
legend('topright', legend=categorias, col = categorias, pch=as.numeric(categorias), bty='n', cex=.70)

#scatter plot en global, se toman las variables y se da el color que se quiere
pairs(Forbes2000[,5:8],col=Forbes2000$category)
