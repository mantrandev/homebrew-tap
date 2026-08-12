cask "hkey-vni" do
  version "0.0.5"
  sha256 "7c4d0037171d53e6eabf42b021f3ae44ccf79eaf9f950e1f15aa28be128d376c"

  url "https://github.com/mantrandev/HKey/releases/download/vni-v#{version}/HKey-vni-v#{version}.dmg"
  name "HKey VNI"
  desc "Minimal Vietnamese input method for macOS, VNI only"
  homepage "https://github.com/mantrandev/HKey"

  depends_on arch: :arm64
  depends_on macos: :ventura

  conflicts_with cask: [
    "mantrandev/tap/hkey",
    "mantrandev/tap/hkey-telex",
  ]

  app "HKey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.hkey.plist",
  ]
end
