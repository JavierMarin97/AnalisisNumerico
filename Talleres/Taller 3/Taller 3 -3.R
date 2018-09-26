fx=function(y){
  res=c()
  cont=0
  res[cont]=0
  cont=cont+1
  e=2.71828182846
  for (i in y) {
    res[cont]=round(e^i,7)
    cont=cont+1
  }
  return(res)
}
lagrange = function(x,y,a){
  n = length(x)
  if(a < min(x) || max(x) < a) stop("No está interpolando")
  X = matrix(rep(x, times=n), n, n, byrow=T)
  mN = a - X; diag(mN) = 1
  mD = X - t(X); diag(mD) = 1
  Lnk = apply(mN, 1, prod)/apply(mD, 2, prod)
  sum(y*Lnk)
}
x=c()
y=c()
x=c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)
y=fx(x)
plot(x,y, pch=19, cex=1, col = "red", asp=1) 
lagrange(x[4:7],y[4:7], 0.35)



