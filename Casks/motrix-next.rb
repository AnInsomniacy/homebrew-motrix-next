cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.8.10"
  sha256 arm:   "ba84411824bbaac61f14069593c9aa31b97f70941d7cbebaa2f39b7e4caf5430",
         intel: "f8850be44b077c33d538574145a9ab6afbf8bfaa65ec03aa38857aaa907cc634"

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
