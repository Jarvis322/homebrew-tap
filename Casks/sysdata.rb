cask "sysdata" do
  version "0.3.7"
  sha256 "3c8e1a1ae9bbed5af68aabc0aa463a9c7d00da95e415ebb71f71c574b7769131"

  url "https://github.com/Jarvis322/macos-sysdata/releases/download/v#{version}/SysDataMenu-#{version}.dmg"
  name "System Data"
  desc "Menu bar app that shows what is inside macOS System Data and deletes it item by item"
  homepage "https://github.com/Jarvis322/macos-sysdata"

  depends_on macos: ">= :sonoma"

  app "SysDataMenu.app"

  zap trash: [
    "~/Library/Preferences/local.sysdata.menu.plist",
  ]
end
