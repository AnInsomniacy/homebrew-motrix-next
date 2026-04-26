cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.4"
  sha256 arm:   "81b470787f5454443d3bb448111806dc046c06fc3ceeaf47d37477b936ed559e",
         intel: "d41d4ac3562aa40f067c0b6a84a03cbedc6bfdd9eb795d5da9cab3b481416350"

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
