cask "sysdata" do
  version "1.3.0"
  sha256 "4683fb7e910b2e5952043b082b209a5ac8aeb0703ed0897a0994e5da49411666"

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
