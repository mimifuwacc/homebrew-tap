cask "wallpaper-manager" do
  version "0.4.0"
  sha256 "ce7083181dc893eecf12148c8e97ce88ae4773db1bdf3caad9d3c57db9803014"

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
  depends_on macos: :sonoma

  app "WallpaperManager.app"

  zap trash: "~/Library/Preferences/cc.mimifuwa.WallpaperManager.plist"
end
