#!/usr/bin/env bash

# 1) nmap 설치
sudo dnf install -y nmap

# 2) 특정 포트(예: 80번) 스캔
nmap -p 80 www.google.com

# 3) 외부서버 열려있는 모든 포트 스캔
namp nmap.org
