#!/usr/bin/env bash

# 1) nginx 설치
sudo dnf install -y nginx

# 2) net-tools 설치
sudo dnf install -y net-tools

# 3) nginx 서비스 시작 및 상태 확인
sudo systemctl start nginx && sudo systemctl status nginx

# 4) ss 명령어로 80번 포트 사용 중인 프로세스 확인
sudo ss -tulpn | grep ':80'

# 5) netstat 명령어로 80번 포트 사용 중인 프로세스 확인
sudo netstat -tulpn | grep ':80'

# 6) fuser 명령어로 80번 포트 사용 중인 프로세스 확인
sudo fuser 80/tcp

# 7) 프로세스 이름(nginx)으로 PID 찾아 상세 정보 확인
ps -fp $(pgrep nginx)


