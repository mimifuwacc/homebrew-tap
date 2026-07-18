cask "wallpaper-manager" do
  version "0.5.0"
  sha256 "31e3085be68730f84cb02f140cbb5447409732f6fbda8e1e2bedd267c0a9a2b3"

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
