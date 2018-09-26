f=function(x){
  return(x*exp(x))
}
f4.4=function(x,h){
  return((1/(2*h))*((-3*f(x))+(4*f(x+h))-f(x+2*h)))
}
f4.5=function(x,h){
  return((1/(2*h))*(f(x+h)-f(x-h)))
}
deriv=function(x){
  return(exp(x)+(x*exp(x)))
}
puntos=c(1.8,1.9,2.0,2.1,2.2)
hs=c(0.1,0.01,0.001,0.0001)
puntos=c(1.8,1.9,2.0,2.1,2.2)
hs=c(0.1,0.01,0.001,0.0001)
err=c()
er=c()
for(i in 1:length(puntos)){
  print("---------------------------")
  print(puntos[i])
  print("---------------------------")
  for(j in 1:length(hs)){
    print(hs[j])
    f1=f4.4(puntos[i],hs[j])
    f2=f4.5(puntos[i],hs[j])
    d=deriv(puntos[i])
    err1=d-f1
    err2=d-f2
    print(f1)
    print(f2)
    print(d)
    print(err1)
    print(err2)
    err[j]=err1
    er[j]=err2
  }
}
dat <- data.frame(cbind(hs,err[1:4]))
sc<- plot(dat,pch=20,cex=1,col="red",asp=1,xlab="x",ylab="y")+geom_point(size=2, col='blue')
dat <- data.frame(cbind(hs,er[1:4]))
sc<- plot(dat,pch=20,cex=1,col="red",asp=1,xlab="x",ylab="y")+geom_point(size=2, col='blue')
