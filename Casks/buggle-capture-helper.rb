cask "buggle-capture-helper" do
  version "0.1.3"
  sha256 :no_check # 릴리스 후 `shasum -a 256 <dmg>` 값으로 교체 권장(초기 임시)

  url "https://github.com/choeae-labs/buggle-capture-helper/releases/download/v#{version}/BuggleCaptureHelper.dmg"
  name "buggle 캡처 도우미"
  desc "buggle 전용 스크린샷·GIF 캡처 도우미"
  homepage "https://github.com/choeae-labs/buggle-capture-helper"

  # 서명(Developer ID) 전이라 자동업데이트는 꺼져 있음 — 새 버전은 `brew upgrade`로.
  auto_updates false

  app "buggle 캡처 도우미.app"

  zap trash: [
    "~/Library/Application Support/BuggleCapture",
  ]
end
