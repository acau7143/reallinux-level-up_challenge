## Goal
- 서버 인터넷 연결 확인 방법
## Commands
1. `ping -c 4 8.8.8.8` - ping 명령어로 구글의 공용 DNS 서버에 신호를 보내 서버의 인터넷 연결이 물리적으로 가능한지 확인
2. `ping -c 4 google.com` - 도메인 이름으로 실행하여 DNS 조회가 정상적으로 작동하는지 확인
3. `curl http://www.google.com` - curl을 사용해 웹서버에 HTTP 요청을 보내고 응답을 받아오는지 확인하여, 웹 트래픽이 정상인지 점검함
## Notes
- `-c 4` - 핑을 4번만 보내고 중단 
