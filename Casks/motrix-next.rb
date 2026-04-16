cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "eee48256667e4171e6891a6372d777e7830b23a1ec6c0663cbcfaff0f08a788f",
         intel: "ba7a53ccd3e791c331ac95d64d77fbd9a45dad478c9853d4bb1593d947b68afd"

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
