cask "sysdata" do
  version "0.2.1"
  sha256 "f82f88bcf8bca83e04f0c21ac8976e99d250af800eebc7ebd4a8679dc0ac346e"

  url "https://github.com/Jarvis322/macos-sysdata/releases/download/v#{version}/SysDataMenu-#{version}.zip"
  name "System Data"
  desc "Menu bar app that shows what is inside macOS System Data and deletes it item by item"
  homepage "https://github.com/Jarvis322/macos-sysdata"

  depends_on macos: ">= :sonoma"

  app "SysDataMenu.app"

  zap trash: [
    "~/Library/Preferences/local.sysdata.menu.plist",
  ]
end
