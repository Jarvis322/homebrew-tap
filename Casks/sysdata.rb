cask "sysdata" do
  version "0.3.2"
  sha256 "5c8f444f3d8f375b3a00b5a6ca877fd2e9d1a7e3cfe55e9069033b021f243cad"

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
