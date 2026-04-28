cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.5"
  sha256 arm:   "b2cd98239e9a5945f39505251b2fde83d5c4fbd62369300dd8889e35e9405650",
         intel: "ea050eada8b6cb8e964f88c173dca4b2e2d02c48ff2e48cfb64637d30d1d38ca"

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
