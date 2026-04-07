cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.4"
  sha256 arm:   "168f668186e5e25fc8afd2a16b0166d2cc9d004e90e13952ff6b800fef8e99dd",
         intel: "275e54931ca637c7feba5bc6754118cfb77febbf7913dcbf77a1e5bc2d840c8c"

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
