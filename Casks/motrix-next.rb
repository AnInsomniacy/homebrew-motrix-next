cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.6"
  sha256 arm:   "0d18fab88011e12a45b4330289096b98edd65e8bfbbd9383273f5e1b033ffc9f",
         intel: "dce3514bd8d02bc1deb88bc0ac447156bdb41100911a9358aeb06a6c667669d2"

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
