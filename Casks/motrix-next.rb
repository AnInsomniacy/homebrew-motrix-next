cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "5207c39fd6459cc972a4805f9ec2004512bc3291f25a7f4be5da146db883f917",
         intel: "e2d4b9a6284b583b233986cf5f9e7f16e4a0a64debc6c56c2edc6c4fa52f56e8"

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
