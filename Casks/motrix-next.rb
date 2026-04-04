cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "dd5d7bd9dc7b282bf82fc62f6ae3d31107158743cca52d8a0ca4ecfca3078a24",
         intel: "2a0fbe2e2fc4b44bfc67f8c18cbecc9eda99b4de0201dcd3d55cee9f23bacdce"

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
