cask "motrix-next" do
  arch arm: "aarch64", intel: "c2504e129e2b7bf6fa7feb212455530a8aeee2674f60c0ae4df4caca07251652"

  version "3.4.9"
  sha256 arm:   "4c971a75193d1258a9e745a14c3366227da1b50486cd96a606bd86b421afc06f",
         intel: "c2504e129e2b7bf6fa7feb212455530a8aeee2674f60c0ae4df4caca07251652"

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
