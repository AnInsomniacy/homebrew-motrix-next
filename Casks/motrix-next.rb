cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "4fa407f666df9e0e7d828ca3f5a75bc6114b31664e06bbe938355dcbf9ae4327",
         intel: "80a46075bee0f8f38556a968fdb3e6a67d3ebd2292b02d993023c3ff0579f7bb"

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
