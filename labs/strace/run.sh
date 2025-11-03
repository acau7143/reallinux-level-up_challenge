#!/usr/bin/env bash

# 1) strace 기본 설명
whatis strace

# 2) 새로운 프로세스 실행과 동시에 시스템콜 추적
strace -c ls

# 3) 실행 결과를 로그 파일로 저장
strace -o trace.log ls

# 4) 로그파일에서 처음 50줄만 확인
head -n 50 trace.log

# 5) 특정 시스템콜만 상세히 추적
strace -tt -T -f -e trace=open,read,write ls

# 6) 종료
echo "실습 종료"

