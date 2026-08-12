cask "hkey-telex" do
  version "0.0.4"
  sha256 "07e09fdceac373475c69e6e83427a7ffbab84922b8a83c47b9e9e74c978679ba"

  url "https://github.com/mantrandev/HKey/releases/download/telex-v#{version}/HKey-telex-v#{version}.dmg"
  name "HKey Telex"
  desc "Minimal Vietnamese input method for macOS, Telex only"
  homepage "https://github.com/mantrandev/HKey"

  conflicts_with cask: [
    "mantrandev/tap/hkey",
    "mantrandev/tap/hkey-vni",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
