cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.3"
  sha256 arm:   "f0737ec4d0e23e3cda8cdab1a5c259c7b220ecc1e117fc906b07b4497c088da4",
         intel: "9fecdf49ec86a0a05b0fe9f92b881a097afb5cde20b99742ce1303315ac1adc7"

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
