cask "macwake" do
  version "1.22"
  sha256 "5acfad399fb0fc427fdfc69cc7b423439619231d7be82c4db60c1ab7a7800269"

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
