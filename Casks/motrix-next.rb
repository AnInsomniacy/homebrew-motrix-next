cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.7"
  sha256 arm:   "77648dbba343e0a3097547f8d5d9d8c922ad8174512ea425a01c954bcdca420a",
         intel: "95e04d1db1fe961be2c964badd7b265edd9a12f9bc2077965652ca81f9a2cc06"

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
