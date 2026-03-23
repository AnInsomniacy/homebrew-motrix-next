cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.4.8"
  sha256 arm:   "6e1917fcd2e54ddc1a4e5bde28f284c70fed494d8c0f43af6a07b0e1cce3e097",
         intel: "e8fc35bce5aff87f09d45ac73c6e4f2244894793d69569d65dd036c19374c304"

  url "https://github.com/AnInsomniacy/motrix-next/releases/download/v#{version}/MotrixNext_#{arch}.app.tar.gz",
      verified: "github.com/AnInsomniacy/motrix-next/"
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
