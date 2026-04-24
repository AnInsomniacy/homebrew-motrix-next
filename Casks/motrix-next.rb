cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.3"
  sha256 arm:   "4864b3080bc4ea34ee5346b5c2b566ca8f3ba6c5fe0c27a3781d10a1e156afeb",
         intel: "66e1cbec2a2cf65fa6d6b7be126199ffa84364d013c435bf2fc8d502dd60ffc6"

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
