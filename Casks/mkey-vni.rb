cask "mkey-vni" do
  version "0.0.6"
  sha256 "901554e9c6b725252b2b282b751daae64e105284572f1e93208c5e656516019c"

  url "https://github.com/mantrandev/Mkey/releases/download/vni-v#{version}/Mkey-vni-v#{version}.dmg"
  name "Mkey VNI"
  desc "Minimal Vietnamese input method for macOS, VNI only"
  homepage "https://github.com/mantrandev/Mkey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/mkey",
    "mantrandev/tap/mkey-telex",
  ]

  app "Mkey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.mkey.plist",
  ]
end
