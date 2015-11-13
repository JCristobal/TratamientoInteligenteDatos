#generación de variables normalizadas (valor de mercado y ventas)
 x=Forbes2000$marketvalue
 y=Forbes2000$sales
 z=(x-mean(x))/sqrt(var(x))
 w=(y-mean(y))/sqrt(var(y))
 u=(x-min(x))/(max(x)-min(x))
 v=(y-min(y))/(max(y)-min(y))
 #Mostramos según la categoría (podríamos también según el nombre de la empresa)
 norm=data.frame(z,w,u,v, Forbes2000$category)
 names(norm)=c("ValorMercado","Ventas","ValorMercado01","Ventas01","Categoria")
 norm[1:50,]
with(norm, plot(ValorMercado,Ventas,col=Categoria,pch=as.numeric(Categoria))) 
with(norm,plot(ValorMercado01,Ventas01,col=Categoria,pch=as.numeric(Categoria)))
write.csv(norm,"./normalizados.csv",row.names=FALSE) 
