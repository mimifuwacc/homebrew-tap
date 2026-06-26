cask "wallpaper-manager" do
  version "0.2.0"
  sha256 "f60ca5d9287e8b895b024fa0968273fcab34e30c1af2c03c2c7b573e51287b6d"

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
