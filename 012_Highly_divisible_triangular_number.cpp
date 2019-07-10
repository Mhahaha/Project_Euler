#include <iostream>
#include<ctime>
using namespace std;

//获取因子数
int getfactornumber(int n){
	int ans = 1;
	int factor2 = 0; //先筛掉2
	while(n%2 == 0){
		n /= 2;
		factor2++;
	}
	ans *= (factor2+1);
	for(int i = 3; i*i <= n; i+=2){
		int tem = 0;
		while(n%i == 0) {
			n /= i;
			tem++;
		}
		ans *= (tem+1);
	}
	//
	if(n > 1) ans *= 2;
	return ans;
}

int main()
{
	int n = 2;
	clock_t start = clock();
	while(n){
		long long t = n*(n+1)/2 ; 
		int ans = getfactornumber(t);
		if(ans > 500){
			cout << t << endl;
			break;
		}
		else n++;
	}
	clock_t end = clock();
	double time = (double)(end-start)/CLOCKS_PER_SEC;
	cout << time << endl;
	system("pause");
}