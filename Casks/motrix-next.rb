cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.9"
  sha256 arm:   "7d058f9fb7b01db7097f9bc1b2f18b14eb6108a95154fc826be83c8cf5f067a6",
         intel: "5f3cbed48f3d4558403cd35a67ef5aef0d403549d71824151c8c2a394c8ef642"

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
