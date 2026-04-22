cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.1"
  sha256 arm:   "8d5300d265c4dc403e961ebdbf60eabfa9505c6949ff25a13925d1ea562b4603",
         intel: "8c1e76409f6a226fb768fd97273ce2420e6683fd744e6901276777eb55aa9795"

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
