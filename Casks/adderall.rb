cask "adderall" do
  version "0.1.2"
  sha256 "1b97f6dfcbf79e69737256789c901beebe20dc3fe6c1afaa3c1a9178cef175cc"

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
