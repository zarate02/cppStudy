#include <iostream>
using namespace std;

int main()
{
    //분기문
    int hp = 100;
    int damage = 100;

    hp -= damage;
    if (hp <= 0) {
        cout << "죽음" << endl;
    }
    //if 를 두개쓰기보다 else를 쓰는게 효율좋음
    else {
        cout << "삶" << endl;
    }

    switch (hp)
    {
    case 10:
        cout << "10남음" << endl;
        break;
    default:
        break;
    }

    //반복문
    //for
    //while
    //break
    //continue
}
