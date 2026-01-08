#!/usr/bin/env bash

# 1) 외부 IP로 Ping 테스트
ping -c 4 8.8.8.8

# 2) DNS 동작확인 (도메인 이름을 IP 주소 변환)
ping -c 4 google.com

# 3) curl로 HTTP 접속 확인
curl http://www.google.com
