# Written by peeza's Mac release (apps/desktop/mac/homebrew/tap.sh in the app's repository) —
# edits here are overwritten by the next release.
cask "peeza" do
  version "26.11.4"
  sha256 "57e48574feb9502999e2f458581e985e6fe5358770179d259fda3a4335578dcd"

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
