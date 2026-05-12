cask "mkey" do
  version "0.0.3"
  sha256 "9672eecfa0692c1d85548364342a51ca13bf003068f3be4b42fdd070251c590c"

  url "https://github.com/mantrandev/Mkey/releases/download/v#{version}/Mkey-v#{version}.dmg"
  name "Mkey"
  desc "Minimal Vietnamese input method for macOS"
  homepage "https://github.com/mantrandev/Mkey"

  app "Mkey.app"

  zap trash: [
    "~/Library/Preferences/com.mantrandev.mkey.plist",
  ]
end
