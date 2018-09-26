
x = seq(-3, 3, 0.1)
y=dnorm(x)
plot(x = x, y =y, type="l", bty="n")
n=61
aux=61/n
y1=c()
x1=c()
sum=0
for(i in 1:n){
  y1[i]=y[i*aux]
  x1[i]=x[i*aux]  
  sum=sum+(y1[i]*aux)
}
print(sum)
dat = data.frame(cbind(x1,y1))
sc=plot(dat,pch=20,cex=1,col="red",asp=1,xlab="x",ylab="y",main ="distriución normal")+geom_point(size=2, col='blue')
barplot(y1)
