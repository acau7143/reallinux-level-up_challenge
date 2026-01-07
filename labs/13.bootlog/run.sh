#!/usr/bin/env bash

# 1) 현재 시스템의 부팅 로그 보기(q로 종료)
journalctl -b

# 2) 한 번에 전체 부팅 로그 보기
journalctl -b --no-pager

# 3) dmesg 명령어의 간단 설명 보기
whatis dmesg

# 4) 커널 메시지 직접 보기
dmesg

# 5) 부팅 이력 목록 보기
journalctl --llist-boots

# 6) 직전 부팅 로그 보기
journalctl -b -1


