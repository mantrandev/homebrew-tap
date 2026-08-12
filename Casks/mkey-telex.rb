cask "mkey-telex" do
  version "0.0.6"
  sha256 "fcc9b9cc4b6909f6635ce1c07e481d366e2efe167f34963cfff70470010ffe04"

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
