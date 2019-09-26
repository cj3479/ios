#include<cstdio>
#include<queue>
#include<iostream>
using namespace std;
//priority_queue<int>q;
priority_queue<int, vector<int>, greater<int> > q;
int main() {
    int n;
    long long ans = 0;
    int previous = 0 ;
    scanf("%d", &n);
    for (int i = 1; i <= n; i++) {
        int u;
        scanf("%d", &u);
        q.push(-u);
        q.push(-u);
        int a_top = q.top();
        if(u>a_top&&q){
            printf("buy %d", a_top);
        }
        ans += u + a_top;
        previous = u;
        q.pop();
    }
    printf("%lld", ans);
    return 0;
}

