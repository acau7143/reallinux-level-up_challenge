## Goal
- DNS 설정 확인하는 방법
## Commands
1. `cat /etc/resolv.conf` - 시스템이 사용하도록 설정된 DNS 서버 주소를 직접 확인
2. `nmcli dev show | grep DNS` - nmcli(NetworkManager Command Line interface)를 사용해 현재 활성화된 네트워크 장치에 실제로 적용된 DNS 설정을 확인
3. `sudo dnf install -y bind-utils` - DNS 문제를 진단하는데 유용한 dig 명령어 설치
4. `dig google.com` - dig 명령어로 google.com의 IP 주소를 조회하여 DNS 서버가 정상적으로 응답하는 확인
5. `host google.com` - host 명령어로 google.com 의 IP 주소를 간결하게 조회
## Notes
- `/etc/resolv.conf` - DNS 네임 서버 주소가 기록되는 전통적인 설정 파일 
- `nmcli dev show` - 모든 네트워크 장치의 상세 정보를 표시
- `dig google.com` -  출력 결과의 SERVER 섹션을 보면 이 질의에 어떤 DNS 서버가 사용되었는지 알 수 있음
- `host google.com` -  dig보다 출력이 간단하여 특정 도메인의 IP 주소만 빠르게 확인하고 싶을 때 유용
