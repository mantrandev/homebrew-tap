cask "hkey" do
  version "0.0.4"
  sha256 "fe31311175995eebb03d76e621556c84123558cae7929124d207a78045c0603b"

  url "https://github.com/mantrandev/HKey/releases/download/v#{version}/HKey-v#{version}.dmg"
  name "HKey"
  desc "Minimal Vietnamese input method for macOS"
  homepage "https://github.com/mantrandev/HKey"

  depends_on macos: ">= :ventura"

  conflicts_with cask: [
    "mantrandev/tap/hkey-vni",
    "mantrandev/tap/hkey-telex",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
