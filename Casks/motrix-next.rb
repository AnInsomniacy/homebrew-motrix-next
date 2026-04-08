cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.5"
  sha256 arm:   "9fb38827b47e5d1b19ad79443aaf2b93467d664cdcc69a4e2c0e3bc419e6a928",
         intel: "0aff7656e68e82d2d5258931be5e7f8fe75ba24cda81e97eb433207c3b46d797"

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
