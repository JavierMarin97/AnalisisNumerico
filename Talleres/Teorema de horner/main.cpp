#include <iostream>
#include <math.h>

using namespace std;
int main()
{
    float x=8,c[6]={3, 2, 6, 5, 4, 3},res,cont=0;
    res=c[0];
    for(int i=1;i<6;i++){
        res= res* x + c[i];
        cont+=2;
    cout<<res<<endl;
    }
    cout << "El resultado es :" <<res << endl;
    cout << "numero de operaciones basicas empleadas: "<<cont<< endl;
    return 0;
}
