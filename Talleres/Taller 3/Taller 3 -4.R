install.packages("PolynomF")
require(PolynomF)
lagrange = function(x,y,a){
  n = length(x)
  if(a < min(x) || max(x) < a) stop("No está interpolando")
  X = matrix(rep(x, times=n), n, n, byrow=T)
  mN = a - X; diag(mN) = 1
  mD = X - t(X); diag(mD) = 1
  Lnk = apply(mN, 1, prod)/apply(mD, 2, prod)
  sum(y*Lnk)
}
n1=c()
n2=c()
n3=c()
n4=c()
n5=c()
n1=c(30,31,32,33,34,35,36,37,38,39)
n2=c(40,41,42,43,44,45,46,47,48,49)
n3=c(50,51,52,53,54,55,56,57,58,59)
n4=c(60,61,62,63,64,65,66,67,68,69)
n5=c(70,71,72,73,74,75,76,77,78,79)
y=c()
x=c(n1,n2,n3,n4,n5)
y=c(35,48,70,40,22)
datx = x[1:5]; daty = y[1:5]
polyAjuste = poly.calc(datx,daty)
polyAjuste
plot(datx,daty, pch=19, cex=1, col = "red", asp=1)
curve(polyAjuste,add=T) 
