cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.8"
  sha256 arm:   "0fb18bfbaaa7c685e9d9a4a5e513140f3331cf624b9a6dbaef776ecf13739a10",
         intel: "f67cd2e88232d3a34158d99878aa82f6353b099e72572b463fe798c134e965cc"

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
