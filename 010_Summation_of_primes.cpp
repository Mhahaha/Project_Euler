#include<iostream>

#include<algorithm>
using namespace std;


long long calculateSum(int n){
    int* isPrime = new int[n+1]();
    isPrime[2] = 1;
    for(int i = 3; i <= n; i+=2) isPrime[i] = 1;
    for(int i = 3; i <= sqrt(n); i += 2){
        if(isPrime[i]){
            for(int j = i*i; j <= n; j += 2*i)
               isPrime[j] = 0;
        }
    }
    long long sum = 0;
    for(int i = 1; i <= n; i++){
        if(isPrime[i]) sum += i;
    }
    return sum;
}
int main(){
    cout << calculateSum(2000000) << endl;
    system("pause");
}