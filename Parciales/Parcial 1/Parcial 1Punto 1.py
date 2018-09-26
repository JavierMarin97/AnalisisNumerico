
def llenarMatriz(n):
    matriz=[]
    for i in range(int (n)):
        matriz.append([])
        for j in range(int (n)):
            matriz[i].append(j+2)
    return matriz
def sumaMatriz(matriz,n):
    res=0
    for i in range(n):
        for j in range(n):
            res= res+matriz[i][j]
    print("la suma de la matriz es: ",res)
n= input("si Desea salir ingrese 0\nIngrese el valor de n: \n")
while(int(n)!=0):
    matriz =llenarMatriz(n)
    print ("la matriz es: ",matriz)
    sumaMatriz(matriz,int(n))
    n= input("si Desea salir ingrese 0\nIngrese el valor de n: \n")