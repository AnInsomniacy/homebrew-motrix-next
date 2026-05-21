cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "f0339103fb557c2e3127b5ce2031b6932eb16663d06308329a0a92e25b38da38",
         intel: "16d64be062ec91e856a29310940b0f56ae25e62087edcb3808a1cc4a21ebdfad"

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
