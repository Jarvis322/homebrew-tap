cask "sysdata" do
  version "0.4.5"
  sha256 "b1f20606bcf0a98b2f9f6c0600cbe5dd692c006412aeef5fb1af0d28703b2914"

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
