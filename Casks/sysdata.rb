cask "sysdata" do
  version "1.9.0"
  sha256 "90f1b7daf97118d1a3d83515b0c32d8567db9f44d8ab3f04ebdaf5bbdf861b6d"

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
