cask "macwake" do
  version "1.23"
  sha256 "44e017f9c88d68ad6e17452c80c839cb547023abad7acb4333ad55d610f3eb24"

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
