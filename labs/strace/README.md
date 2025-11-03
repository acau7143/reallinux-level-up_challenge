# strace — micro lab

## Goal
- 프로세스가 호출하는 시스템콜을 추적한다.

## Commands
1. `whatis strace` — strace 기본 설명 확인  
2. `strace -c ls` — 새로운 프로세스 실행과 동시에 시스템콜 통계 확인  
3. `strace -o trace.log ls` — 실행 결과를 로그 파일에 저장  
4. `head -n 50 trace.log` — 로그 파일 앞부분 확인  
5. `strace -tt -T -f -e trace=open,read,write ls` — 특정 시스템콜(open, read, write)만 상세 추적  
6. `: quit` — 실습 종료

## Notes
- `-c`: 각 시스템콜의 호출 횟수/시간 통계 표시  
- `-o`: 결과를 지정한 파일(trace.log)에 저장  
- `-tt` : 마이크로초 단위의 시간 표시
- `-T` : 각 시스템콜이 걸린 시간 출력
- `-f` : 자식 프로세스까지 추적 
- `-e trace=`: 추적할 시스템콜 필터 지정
