cask "macwake" do
  version "1.56"
  sha256 "24d2b0763456fa50092ddfc087760f7d3e9baafdd222508b77385ce212104555"

  url "https://github.com/Jarvis322/MacWake/releases/download/v#{version}/Wake-#{version}.dmg"
  name "MacWake"
  desc "Battery health monitor for macOS — tracks temperature, fan speed, and charging habits"
  homepage "https://jarvis322.github.io/MacWake/"

  depends_on macos: :sonoma

  app "MacWake.app"

  zap trash: [
    "~/Library/Application Support/MacWake",
    "~/Library/Preferences/com.jarvisit.macwake.plist",
    "~/Library/Saved Application State/com.jarvisit.macwake.savedState",
  ]
end
