cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "544d27b431ac155b99bee4eb8869880efafd708b7fd7f3c051833b27c8125b6b",
         intel: "af918b25bbc404a1de8f4213726fab149d5400db45ac72b62021b25a56183a32"

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
