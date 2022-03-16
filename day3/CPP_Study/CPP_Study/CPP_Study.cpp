#include <iostream>
using namespace std;

// 이렇게 주석을 달 수 있어요!

//CTL+K+C //CTL+K+U
//ㅁ
//ㅠ
//ㅊ

// 가장 빈번하게 사용되는 정수에 대해 알아봅시다.

//data
int hp = 100;

//bss
int hp2;

signed char a;     //1바이트 (-128~127)
//signed는 부호가있는다는 의미 일반적으로 생략
short b;    //2바이트
int c;      //4바이트
__int64 d;  //8바이트(long long)

//unsigned는 부호가 없다는 의미
unsigned char a2; //1바이트 (0~255)

//불리언(boolean) 참/거짓을 나타내는 정수
//1비트가아닌 1바이트사용하는 이유 : 보통 최소단위가 1바이트기때문에
bool isHighLv = true;

//실수(부동소수점)
float f1 = 0.123f;      //4바이트
double f2 = 0.12345;    //8바이트
//부동(움직이는)소수점
// 3.1415926
// 0.31415926 (유효숫자) * 10^1(지수)
// float 부호(1) 지수(8) 유효숫자(23)
// double 부호(1) 지수(11) 유효숫자(52)
// 어디까지나 근사값

//문자열
//char : 알파벳 / 숫자 문자
//wchar_t : 유니코드 문자
char ch = 97;; //아스키 코드가 들어감
char ch2 = 'a';
char ch3 = 'a' + 1; // '1'의 아스키코드값에 1을 더함

//글로벌을 위해 유니코드사용
//UTF-8
//알파벳, 숫자는 ASCII와 동일
//유럽 2바이트 아시아 3바이트
//UTF-16
//대부분 2바이트
//매우예외적으로 4바이트
wchar_t wch = L'안';

//escape Sequence : 표기하기애매한애들
// \t(탭) \n(엔터) \r(<<) \+특문

//문자열
//정수 고정길이
//끝은 null(0)
char str[] = { 'h','e','l','l','o','\0' };
char str2[] = "hello";

//데이터연산

int aa = 1;
int bb = 2;

int main()
{
#pragma region 연산이전
    cout << ch << endl;

    cout << ch3 << endl;

    wcout.imbue(locale("ko"));
    wcout << wch << endl;

    cout << str << endl;
    cout << str2 << endl;
#pragma endregion

#pragma region 연산
    //산술연산자
    
    //대입연산
    //a에 b를 대입하고 b를 반환
    aa = bb;

    //사칙연산
    aa = aa + 1;
    aa += 3; // a = a + 3    
    bb = aa++; //b=a -> a=a+1
    bb = ++aa; //a=a+1 -> b=a

    //비교연산자
    aa == bb;
    aa != bb;
    aa > bb;
    (aa < bb) && (aa != 1);

    //비트연산자
    unsigned char flag;

    //[0b0000] 무적 변이 스턴 에어본
    flag = (1 << 3); //무적변신
    flag |= (1 << 2);   //변이추가
    
    (flag & (1 << 3)) != 0;  //무적상태확인

    unsigned char mask = (1 << 3) | (1 << 1);   //무적스턴마스크
    (flag & mask) != 0;
    
    //const 란 상수화
    //메모리 : .data .bss .rodata(const 포인터)
    //const가 붙으면 메모리에 올라가지 않을수도 있음
    const int AAA = 1;

#pragma endregion
}
