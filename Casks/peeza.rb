# Written by peeza's Mac release (apps/desktop/mac/homebrew/tap.sh in the app's repository) —
# edits here are overwritten by the next release.
cask "peeza" do
  version "26.10.18"
  sha256 "b4e9f53566376cca22c71c849e63d9c085a33d4a099efb8a71ad8a715c33369e"

  url "https://github.com/ercwilcom/public/releases/download/mac-v#{version}/peeza-#{version}.dmg"
  name "peeza"
  desc "Send files of any size straight to your own devices and to other people"
  homepage "https://peeza.app/"

  livecheck do
    url "https://peeza.app/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "peeza.app"
  binary "#{appdir}/peeza.app/Contents/Resources/peezad", target: "peeza"

  uninstall launchctl: "app.peeza.daemon",
            quit:      "app.peeza.mac"

  zap trash: [
    "~/.peeza",
    "~/Library/Caches/app.peeza.mac",
    "~/Library/HTTPStorages/app.peeza.mac",
    "~/Library/Preferences/app.peeza.mac.plist",
    "~/Library/Saved Application State/app.peeza.mac.savedState",
  ]
end
