## Goal
- 시스템 부팅 로그 및 커널 메시지를 확인하고 분석한다.
## Commands
1. `journalctl -b` - 현재 시스템의 부팅 로그 확인 (q로 종료)
2. `journalctl -b --no-pager` - 전체 부팅 로그를 한 번에 출력
3. `whatis dmesg` - dmesg 명령어의 간단 설명 확인
4. `dmesg` - 커널 메시지 직접 출력
5. `journalctl --list-boots` - 부팅 이력 목록 확인
6. `journalctl -b -1` - 직전 부팅 로그 확인
## Notes
- `journalctl` - systemd 기반 로그 확인 명령어
- `-b` - 현재 부팅 세션 (-boot)의 로그를 의미
- `dmesg` - 시스템 부팅 과정 중 커널이 기록한 메세지 확인, 하드웨어 인식, 장치 조기화, 드라이버 로드 상태들을 보여줍니다.
- `-b -1` - 현재로 부터 한단계 이전 부팅 로그를 의미,  여러 부팅이 있었을 겨웅 -b -2, -b -3 처럼 더 이전것도 볼 수 있다.
