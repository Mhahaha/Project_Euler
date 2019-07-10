#include<iostream>

using namespace std;

const int T = 13;
int main(){
    string s;
    string s1;
    while(cin >> s1) s.append(s1);
    long long ans = 1;
    for(int i = 0; i <= s.length()-T; i++){
        long long tem = 1;
        for(int j = 0; j < T; j++){
            tem *= (s[i+j]-'0');
        }
        if(tem > ans) ans = tem;
    }
    cout << endl;
    cout << ans;
    system("pause");
}