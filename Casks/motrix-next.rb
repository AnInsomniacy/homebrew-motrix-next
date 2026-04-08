cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.6"
  sha256 arm:   "66024c370b8252c7c03e4859038d6d2694d4f5e834ff2e209e7f151f6569ef98",
         intel: "0c4ae039cc6d5380470123d688daaa89a276a65c69bcdc6ab1ac1ed6ede8a664"

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
