cask "mkey" do
  version "0.0.6"
  sha256 "7b10824d30da12b79e7fa7eb86b17da9e485e456ff63859a8ae14303d3a6fed4"

  url "https://github.com/mantrandev/Mkey/releases/download/v#{version}/Mkey-v#{version}.dmg"
  name "Mkey"
  desc "Minimal Vietnamese input method for macOS"
  homepage "https://github.com/mantrandev/Mkey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/mkey-vni",
    "mantrandev/tap/mkey-telex",
  ]

  app "Mkey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.mkey.plist",
  ]
end
