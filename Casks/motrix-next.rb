cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.1"
  sha256 arm:   "f81ea7c20d0730fc26678a01a8c2aceb04316ccf66dde9630075456f951b9eca",
         intel: "16ed8aff1420a28dd3ffb1e2d428f18182d3f918adcf3886e98cba6f41bea1f1"

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
