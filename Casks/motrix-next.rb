cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.3"
  sha256 arm:   "329530a5e82d969baf72135280ef94eed9ed6cec791493f5c41c1ceaf4b6468d",
         intel: "032c2683d8e88bd358c95781b01658863c36976977fb5c7e7d85be8a6ea4c69e"

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
