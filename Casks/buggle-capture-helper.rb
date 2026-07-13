cask "buggle-capture-helper" do
  version "0.1.3"
  sha256 "df118d460ec1221c32605d8af87ff9cea3aef02df6b5055e453d6469f91f0c0f"

  url "https://github.com/choeae-labs/buggle-capture-helper/releases/download/v#{version}/BuggleCaptureHelper.dmg"
  name "buggle 캡처 도우미"
  desc "buggle 전용 스크린샷·GIF 캡처 도우미"
  homepage "https://github.com/choeae-labs/buggle-capture-helper"

  # 서명(Developer ID) 전이라 자동업데이트는 꺼져 있음 — 새 버전은 `brew upgrade`로.
  auto_updates false

  app "buggle 캡처 도우미.app"

  # Developer ID 서명·공증 전이라 Gatekeeper가 quarantine된 앱을 "악성코드 확인 불가"로 막는다.
  # 설치 시 quarantine 속성을 제거해 바로 실행되게 한다(무료 배포 임시 — 서명 붙이면 제거).
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/buggle 캡처 도우미.app"]
  end

  zap trash: [
    "~/Library/Application Support/BuggleCapture",
  ]
end
