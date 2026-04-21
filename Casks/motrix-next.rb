cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "56a9e996c151e7b7c6683f8602e7582e0677c724b508b08b472d3c53d382fac8",
         intel: "2b13b51447bb8a1295d844bdb4dd3f790086a28094cf1dcc3bcb483948c201c2"

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
