//#include<cstdio>
//#include<queue>
#include<iostream>
namespace first_space{
   void func(){
      std::cout << "Inside first_space" << std::endl;
   }
}

namespace haha{
   void func(){
      std::cout << "haha first_space" << std::endl;
   }
}
using namespace std;
using namespace first_space;
using namespace haha;
//using namespace FILESYSTEM;
//priority_queue<int>q;
//priority_queue<int, vector<int>, greater<int> > q;
int main() {
//    func();
//    int n;
    long long ans = 0;
//    int previous = 0 ;
//    scanf("%d", &n);
//    for (int i = 1; i <= n; i++) {
//        int u;
//        scanf("%d", &u);
//        q.push(-u);
//        q.push(-u);
//        int a_top = q.top();
////        if(u>a_top&&q){
////            printf("buy %d", a_top);
////        }
//        ans += u + a_top;
//        previous = u;
//        q.pop();
//    }
    printf("%lld\n", ans);
    std::cout << "Value of str is : " << ans << endl;
//    cout<<ans<<;
    return 0;
}

