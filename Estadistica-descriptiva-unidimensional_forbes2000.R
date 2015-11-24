#Ver datos
dim(Forbes2000)
names(Forbes2000)
str(Forbes2000)
Forbes2000[1:5,]
Forbes2000[1:10,"sales"]
Forbes2000$sales[1:10]
#Estadistica descriptiva unidimensional
summary(Forbes2000)
quantile(Forbes2000$sales)
quantile(Forbes2000$sales, c(0.20,0.40,0.80))
#Gráficas unidimensionales
#Ejemplos de histogramas
hist(Forbes2000$sales)
hist(Forbes2000$sales,breaks=c(10))
hist(Forbes2000$sales,freq=FALSE)
hist(Forbes2000$sales,freq=FALSE,col=3,border=1)
hist(Forbes2000$sales,freq=FALSE,col=5,border=1)
hist(Forbes2000$sales,freq=FALSE,density=10,col=2,border=1)
hist(Forbes2000$sales,freq=FALSE,density=20,col=5,border=1)
#Ejemplos de calculo de frecstr
#Frecuencias absolutas
#variables discretas
# a category le aplicamos table porque la consideradamos de "tipo factor"
tab=table(Forbes2000$category)
pie(tab)
barplot(tab)
#variables contiuas
# Para hacer un histograma simple
hist(Forbes2000$sales)
# Para capturar una distribución de frecuencias absolutas a gusto  
# Se genera una variable de tipo factor y se aplica table a la misma
factsl=factor(cut(Forbes2000$sales, breaks=0+30*(0:10)))
table(factsl)
barplot(table(factsl))
#frecuencias relativas
#Simple funcion de densidad
plot(density(Forbes2000$sales))
#calculo de distribución de frecuencias
rela=table(factsl)/length(Forbes2000$sales)
plot(rela,col=3)
#frecuencias acumulativas
freac=cumsum(table(factsl))
freac
freacr=(freac/length(Forbes2000$sales))*100
freacr
barplot(freacr)
plot(freacr)

 
