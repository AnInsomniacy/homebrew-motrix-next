cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.7"
  sha256 arm:   "809c6ce3da9e35e5689ba43adefb1332cfb65f1973bf1498e14afc35903d086c",
         intel: "baede37f417c2814f8dbd9b9c2ac32fd11b74b8ff647a0328d677c642e7e10af"

  url "https://github.com/AnInsomniacy/motrix-next/releases/download/v#{version}/MotrixNext_#{arch}.app.tar.gz"
  name "Motrix Next"
  desc "Full-featured download manager built with Tauri"
  homepage "https://github.com/AnInsomniacy/motrix-next"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "MotrixNext.app"

  zap trash: [
    "~/Library/Application Support/com.motrix.next",
    "~/Library/Caches/com.motrix.next",
    "~/Library/Logs/com.motrix.next",
    "~/Library/WebKit/com.motrix.next",
  ]
end
