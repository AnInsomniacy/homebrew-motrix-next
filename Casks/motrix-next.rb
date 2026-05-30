cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.2"
  sha256 arm:   "b755fcf2165c002611b4a67ee7405c0bf13ceba7896d4d224139f56b6e009202",
         intel: "c91321f24e251f7abb259dc0fe1f31aaaa9b3134d6f576a4b91eb769d09b2e6d"

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
