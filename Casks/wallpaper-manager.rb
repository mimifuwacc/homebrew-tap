cask "wallpaper-manager" do
  version "0.3.0"
  sha256 "017edf46c072786edc42a2509f396d1e4b7da0c9fa0863987d61d92b58eb71a0"

  url "https://github.com/mimifuwacc/macos-wallpaper-manager/releases/download/v#{version}/WallpaperManager-v#{version}.dmg"
  name "Wallpaper Manager"
  desc "Switches the desktop wallpaper based on each display's orientation"
  homepage "https://github.com/mimifuwacc/macos-wallpaper-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself, so Homebrew should not try to manage versions.
  auto_updates true
  depends_on macos: ">= :tahoe"

  app "WallpaperManager.app"

  zap trash: "~/Library/Preferences/cc.mimifuwa.WallpaperManager.plist"
end
