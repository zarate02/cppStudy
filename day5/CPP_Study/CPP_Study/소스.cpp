#include <iostream>
using namespace std;

//함수와 스택프레임


int testFun(int number) {
	cout << "넘겨준숫자 : " << number << endl;
	return number + 2;
}

int main() 
{
	int a = 1;
	int b = testFun(a);

	cout << "결과숫자 : " << b << endl;

	return 0;
}