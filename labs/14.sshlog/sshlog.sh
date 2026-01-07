#!/usr/bin/env bash

# 1) sshd 서비스 로그 전체 보기
journalctl -u sshd

# 2) 로컬 호스트에 SSH 접속 시도
ssh reallinux@localhost

# 3) SSH 로그인 성공 로그 확인
journalctl -u sshd | grep "Accepted password"

# 4) sshpass 패키지 설치
sudo dnf install -y sshpass

# 5) 잘못된 비밀번호로 SSH 접속 시도
sshpass -p "wrongpassword" ssh reallinux@localhost

# 6) SSH 로그인 실패 로그 확인
journalctl -u sshd | grep "Failed password"

# 7) sshd 서비스 로그 다시 확인
journalctl -u sshd
