cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.2"
  sha256 arm:   "655ab90c259e6cd3db7b8023f65936b5af1154c750c861bf67d7531939f5a72c",
         intel: "a435ca882a82d345130801ca6b57d1a0176558b54c91e4cb7d620b81d86d4a8f"

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
