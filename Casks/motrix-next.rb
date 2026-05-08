cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.9"
  sha256 arm:   "8742c93a92652d5a445f88ceba3c699d9e987d9ec7ba68562d9d1840dda47b56",
         intel: "2dc974c3007509ffd8582bf4d67e911d9b954b87f56400e506f7c2c270aeb478"

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
