#Selecciono los variables numericas 
x=Forbes2000[,5:8]
# llamo a analisis factorial con un factor ( no permite hacerlo con mas con solo 4 variables)
solu=factanal(na.omit(x),factors=1,scores="regression")
solu
#compruebo como se comporta este factor en relación con las categorias (elimino las 5 últimas ya que en el análisis se han tenido que omitir algunas)
y1=solu$scores
y_aux=Forbes2000[1:1995,]
y2=y_aux$category
h=data.frame(y1,y2)
str(h)
boxplot(h$Factor1 ~ h$y2,col=3)
#Otra funcion que hace analisis factorial (realmente componentes principales)
datos=na.omit(x)
sal=prcomp(datos,retX=TRUE)
sal
str(sal)
sal$x
#El numero de factores a seleccionar se ajusta mediante tol= umbral (tol=NULL en este caso)
sal=prcomp(datos,retX=TRUE)
sal
str(sal)
sal$x
#Como puede verse el criterios de selección no es muy claro.
 
