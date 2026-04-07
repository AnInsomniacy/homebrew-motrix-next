cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.4"
  sha256 arm:   "ad89151d6319a5f731b92e1c4d366301d701ec93d52819196bc5627a502baf36",
         intel: "76df71e1ff9b0c29e640db63d94c5bc8fb2b2fd66d017a5c65b4fcc5516a7ec9"

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
