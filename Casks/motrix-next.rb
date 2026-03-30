cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "baae11948d6c809d5cd05f87d9b48c9c64f6fa512b15c754cb648afacb7f4626",
         intel: "0fc698547c9e72f0bf62d7af4231ce91ab65f34d3e676339daf0acd2535a1ae3"

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
