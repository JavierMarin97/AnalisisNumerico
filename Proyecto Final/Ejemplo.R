library(Interpolacion3D)
x=rnorm(10)
y=x^2
z=InterpSpline(x,y,10,col="green",xlab="X")
print(z)
z[3,2]
