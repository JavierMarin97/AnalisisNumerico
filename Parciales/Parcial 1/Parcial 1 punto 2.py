import math
def h(x):
    return math.sin(int(x))+1
def f(x):
    return math.log(x+2)
def g(x):
    return math.sin(x)
e=0.0000001
x0=input("ingrese el valor minimo del intervalo: " )
x1=input("ingrese el valor maximo del intervalo: ", )

if((h(x0)*h(x1))<0):
    while(x1-x0<=e):
        x2=h(x1)/(h(x1)-h(x0))
        x2=x2*(x1-x2)
        x2=x1-x2
        if((h(x2)*h(x1))<0):
            x0=x1
            x1=x2
        else:
            x1=x2
else:
    print("La raiz no esta en el intervalo")