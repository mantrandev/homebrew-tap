cask "mkey-telex" do
  version "0.0.5"
  sha256 "9374089ba6cfaa3a561af3b8ad7b5e92013385f775c5b8df5355ca047066711c"

  url "https://github.com/mantrandev/Mkey/releases/download/telex-v#{version}/Mkey-telex-v#{version}.dmg"
  name "Mkey Telex"
  desc "Minimal Vietnamese input method for macOS, Telex only"
  homepage "https://github.com/mantrandev/Mkey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/mkey",
    "mantrandev/tap/mkey-vni",
  ]

  app "Mkey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.mkey.plist",
  ]
end
