cask "mkey" do
  version "0.0.5"
  sha256 "6abec73f7acb3df2b93b487309ca0b47dfe01acad8fde8d1930a9f71c859eb7d"

  url "https://github.com/mantrandev/Mkey/releases/download/v#{version}/Mkey-v#{version}.dmg"
  name "Mkey"
  desc "Minimal Vietnamese input method for macOS"
  homepage "https://github.com/mantrandev/Mkey"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Mkey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.mkey.plist",
  ]
end
