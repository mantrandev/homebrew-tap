cask "hkey-vni" do
  version "0.0.4"
  sha256 "5335c9eb9da2b492a64fdcd27bf2edc669bf9ab78b9b376d4d822f808466bab7"

  url "https://github.com/mantrandev/HKey/releases/download/vni-v#{version}/HKey-vni-v#{version}.dmg"
  name "HKey VNI"
  desc "Minimal Vietnamese input method for macOS, VNI only"
  homepage "https://github.com/mantrandev/HKey"

  conflicts_with cask: [
    "mantrandev/tap/hkey",
    "mantrandev/tap/hkey-telex",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
