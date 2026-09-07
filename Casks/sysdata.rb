cask "sysdata" do
  version "0.3.12"
  sha256 "0973a67c3c1728f6339b94dc74c43011285603c25f2622a3cd2896457d79237e"

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
