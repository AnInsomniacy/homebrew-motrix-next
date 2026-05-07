cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.8"
  sha256 arm:   "cb7015e7aa8cb133a0aa1f0b709ea26ae2524e21361c16729e180ae542ecb97f",
         intel: "62c2d262a91a884b6936ea48fbf2c1e5c0dbd8bc07766774330841ed44827d26"

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
