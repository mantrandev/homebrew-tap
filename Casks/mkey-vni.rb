cask "mkey-vni" do
  version "0.0.5"
  sha256 "5e21ba3f45b40e31e792075e2b3154248f458269c3e1d19c121a54b78932fb38"

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
