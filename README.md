# buggle Homebrew Tap

buggle 관련 macOS 앱을 Homebrew로 설치하는 tap입니다.

## 캡처 도우미 (buggle Capture Helper)

```sh
brew tap choeae-labs/tap
brew trust choeae-labs/tap   # 최신 Homebrew(6.0+) 보안 정책 — 서드파티 tap을 1회 신뢰
brew install --cask buggle-capture-helper
```

> `brew trust`가 없는 구버전 Homebrew라면 그 줄은 건너뛰고 바로 install하면 됩니다.

- 첫 실행 시 **시스템 설정 > 개인정보 보호 및 보안 > 화면 기록**에서 "buggle 캡처 도우미"를 켜야 캡처가 동작합니다.
- 새 버전이 나오면 `brew upgrade --cask buggle-capture-helper`로 갱신합니다. (앱 자동업데이트는 코드서명 전까지 꺼져 있습니다 — Homebrew로 관리)
- 여러 장 첨부는 웹의 **캡처 피커**(캡처 버튼 → 여러 장 선택)로 하세요. macOS는 다중 붙여넣기를 지원하지 않아 단일 이미지 붙여넣기만 됩니다.

## 릴리스 담당자용

캡처 도우미 새 버전을 릴리스한 뒤 `Casks/buggle-capture-helper.rb`를 갱신하세요.

1. `version`을 릴리스 버전으로 변경 (dmg 파일명은 `BuggleCaptureHelper-<version>-universal.dmg` 규칙)
2. `sha256`을 실제 값으로 교체 — `shasum -a 256 BuggleCaptureHelper-<version>-universal.dmg`
   (현재 `:no_check`는 초기 임시값이며, 보안상 실제 해시로 바꾸는 것을 권장)

빌드는 헬퍼 저장소에서 `npm run dist:mac` (macOS 필요) → 생성된 `release/BuggleCaptureHelper-<version>-universal.dmg`를 GitHub Release에 업로드합니다.
