cask "macwake" do
  version "1.90"
  sha256 "7f45b89d7c779718dfa752dfc9b8cb2ca865bb4454e37fb48a3635290b28cb58"

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
