cask "sysdata" do
  version "0.4.1"
  sha256 "530685a9966dd6eb3163a17281dadfaeaf8977e59413a871d0a5d19cbb2f8ff4"

  url "https://github.com/Jarvis322/macos-sysdata/releases/download/v#{version}/SysDataMenu-#{version}.dmg"
  name "System Data"
  desc "Menu bar app that shows what is inside macOS System Data and deletes it item by item"
  homepage "https://github.com/Jarvis322/macos-sysdata"

  depends_on macos: :sonoma

  app "SysDataMenu.app"

  zap trash: [
    "~/Library/Preferences/local.sysdata.menu.plist",
  ]
end
