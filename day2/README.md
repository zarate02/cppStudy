# DAY 2

## SHIFT 연산
- 산술쉬프트 : 부호유지
- 논리쉬프트 : 부호무시

## 논리연산
- NOT
- AND
- OR
- XOR

## 분기문 (IF)
- FLAG (ex : ZF)
- je 비교대상1 비교대상2 -> ZF에 결과저장

## 반복문 (FOR)
- IF문과 JUMP를 활용하여 만듬
- LOOP 라벨, ecx에 반복횟수

## 배열과 주소
- 배열 : 동일한 타입의 데이터 묶음
- 배열명 db 0x01, 0x02, 0x03 ...
- 배열명 times 갯수 크기 초기값
- bss : 배열명 resb 갯수

## TIP
- inc, dec : ++, --

## 함수
- 라벨 + ret
- call : 호출
- 레지스터를 이용하여 함수내에 데이터를 저장하면 함수외부에서 값변경 문제가 발생 : 고로 스택사용

## 스택
- 포인터 레지스터를 사용
- ip (Instruction Pointer) : 다음 명령어 위치
- sp (Stack Pointer) : 현재 스택의 top
- bp (base Pointer) : 스택 상대주소 계산용
- 스택은 주소값이 위에서부터 아래로내려옴
- 스택은 LIFO
- 함수는 기본적으로 push rbp, mov rbp, rsp 의 구조가 기본적이다
- push, pop
- 스택은 작업끝나면 초기화해야됨 : add rsp, 24