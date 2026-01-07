## Goal
- ssh 접속시 로그를 확인하는 방법을 알아보기
## Commands
1. `journalctl -u sshd` - ssh 접속 시도, 로그인 성공/실패, 연결 종료 등 모든 ssh 관련 이벤트 포함 
2. `journalctl -u sshd | grep "Accecpted password"` - 접속 성공 기록을 통해 누가, 언제, 어디서 접속했는지를 추적할 수 있음 
3. `sudo dnf intall -y sshpass` - 비밀번호를 자동으로 입력하여 SSH 접속을 테스트할 수 있는 유틸리티를 설치
4. `sshpass -p "wrong password" ssh reallinux@localhost` - 비밀번호가 틀린 상태에서 SSH 로그인 시도를 수행
5. `journalctl -u sshd | grep "Failed password"` - 비밀번호 입력 실패로 인해 거부된 SSH 접속 시도만 필터링하여 확인
## Notes
`journalctl` - systemd 기반 로그 확인 명령어
`-u sshd` - "--unit=sshd" 의 약자로, sshd 서비스에 해당하는 로그만 출력
`sshpass` - SSH 비밀번호를 비대화형(non-interactive)으로 전달하는 도구
