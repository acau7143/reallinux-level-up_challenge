# portnum - labs

## Goal
- 네트워크 80 포트 번호 사용중인 프로세스 찾기

## Commands
1. `sudo dnf install -y nginx` - nginx 설치하기(테스트를 위해 80번 포트를 사용하는 웹서버 설치)
2. `sudo dnf install -y net-tools` - netstat, ifconfig 등 명령어를 사용하기 위한 패키지 설치
3. `sudo systemctl start nginx && sudo systemctl status nginx` - nginx 서비스 실행 및 상태 확인
4. `sudo ss -tulpn | grep ':80'` - ss명령어로 현재 열려 있는 포트중 80번 포트를 사용하는 프로세스 찾음
5. `sudo netstat -tulpn | grep ':80'` - netstat 명령어로 80번 포트를 사용하는 프로세스 찾음
6. `sudo fuser 80.tcp` - fuser 명령어로 특정 포트를 상요하고 있는 프로세스의 ID(PID)를 직접 찾아 낸다.
7. `ps -fp $(pgrep nginx)` - pgrep 으로 nginx 프로세스의 PID를 찾고, ps 로 해당 프로세스 상세 정보 확인
## Notes
- `ss` - 소켓(네트워크 연결)상태를 보여주는 최신 명령어
- `-tulpn` - TCP,UDP,Listening, Numeric 옵션
- `fuser` - 포트 번호만으로 간단하게 PID를 확인할 때 매우 유용함
- `ps -fp` - PID에 해당하는 프로세스의 상세 정보(Full format, Process)를 출력
