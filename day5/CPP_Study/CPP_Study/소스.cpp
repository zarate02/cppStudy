#include <iostream>
using namespace std;

//�Լ��� ����������


int testFun(int number) {
	cout << "�Ѱ��ؼ��� : " << number << endl;
	return number + 2;
}

int main() 
{
	int a = 1;
	int b = testFun(a);

	cout << "������� : " << b << endl;

	return 0;
}