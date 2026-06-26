cask "adderall" do
  version "0.1.3"
  sha256 "0c32ae25dbec77e298d249032bfb4b967bf8534617cce131f46ab0e158e457ea"

  url "https://github.com/mimifuwacc/adderall/releases/download/v#{version}/Adderall-v#{version}.dmg"
  name "Adderall"
  desc "Menu bar toggle for pmset disablesleep"
  homepage "https://github.com/mimifuwacc/adderall"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself, so Homebrew should not try to manage versions.
  auto_updates true
  depends_on macos: :ventura

  app "Adderall.app"

  zap trash: "~/Library/Preferences/cc.mimifuwa.adderall.plist"
end
