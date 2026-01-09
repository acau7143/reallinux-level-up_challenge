#!/usr/bin/env bash

# 1) resolv.conf 파일을 통해 DNS 확인
cat /etc/resolv.conf

# 2) 활성 네트워크 인터페이스에서 DNS 확인
nmcli dev show | grep DNS

# 3) dig 명령 설치 (필요 시)
sudo dnf install -y bing-utils

# 4) dig 명령으로 질의 시 실제 사용되는 DNS 확인
dig goole.com

# 5) host 명령으로 DNS 질의 테스트
host google.com


