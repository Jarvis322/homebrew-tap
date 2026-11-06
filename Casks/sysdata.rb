cask "sysdata" do
  version "1.11.2"
  sha256 "1d3adca0aae29e630a1795e34e4d64af861b541bcde2d4db410a18c5389e74a6"

  url "https://github.com/Jarvis322/macos-sysdata/releases/download/v#{version}/SysDataMenu-#{version}.dmg"
  name "System Data Unpacked"
  desc "Menu bar app that shows what is inside macOS System Data and deletes it item by item"
  homepage "https://github.com/Jarvis322/macos-sysdata"

  depends_on macos: :sonoma

  app "System Data Unpacked.app"

  # The history file records the paths of everything scanned and deleted. It
  # is the one artefact worth being thorough about, and it was the one this
  # stanza missed.
  zap trash: [
    "~/Library/Application Support/SysDataMenu",
    "~/Library/Caches/local.sysdata.menu",
    "~/Library/HTTPStorages/local.sysdata.menu",
    "~/Library/Preferences/local.sysdata.menu.plist",
  ]
end
