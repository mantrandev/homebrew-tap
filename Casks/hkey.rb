cask "hkey" do
  version "0.0.5"
  sha256 "3c403bf374bedcbffea89469359b9c031eae607a4d232d322681edbc66507666"

  url "https://github.com/mantrandev/HKey/releases/download/v#{version}/HKey-v#{version}.dmg"
  name "HKey"
  desc "Minimal Vietnamese input method for macOS"
  homepage "https://github.com/mantrandev/HKey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/hkey-vni",
    "mantrandev/tap/hkey-telex",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
