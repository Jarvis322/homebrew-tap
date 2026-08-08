cask "macwake" do
  version "1.47"
  sha256 "97358f950e7c2ebfce2241eda8fb3a74633dd8009a57efa1e8b51b97282ba9dc"

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
