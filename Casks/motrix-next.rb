cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.9"
  sha256 arm:   "801982ebd32ba43eb663bd5c75ca663483ee47f5b4604dca22cb3d0df6485ca3",
         intel: "76a5e4e03cddc2d06f86cea0db5e42ac72aad9a07c71a4a65b6de4b008e803d5"

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
