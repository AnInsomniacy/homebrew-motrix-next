cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.8"
  sha256 arm:   "57f2fbed74018b3cc204bc81f675a481db02f5ae54baa4ffa675769347ba33af",
         intel: "1d5849d114cc4be46703f7e403ba2ba8de862a943248797fd3242afbf299a2a6"

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
