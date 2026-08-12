cask "hkey-telex" do
  version "0.0.5"
  sha256 "25f3df606ad38eae77dcb61d2ace33e81483aee730cb266e1ad0e033519148e1"

  url "https://github.com/mantrandev/HKey/releases/download/telex-v#{version}/HKey-telex-v#{version}.dmg"
  name "HKey Telex"
  desc "Minimal Vietnamese input method for macOS, Telex only"
  homepage "https://github.com/mantrandev/HKey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/hkey",
    "mantrandev/tap/hkey-vni",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
