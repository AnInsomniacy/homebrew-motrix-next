cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.2"
  sha256 arm:   "5153e5d48d8fac666b15d604d4622227363dc7e43ae790ea9c46017f5c115248",
         intel: "04abdbe66c0430f8d52bca2149aef019a6bd875fd2b5f783eec91752149139af"

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
