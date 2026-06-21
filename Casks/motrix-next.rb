cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.6"
  sha256 arm:   "c47248ffe9d8462896804431bb181bb130a1479762f0b8e25efc7d558508e501",
         intel: "5512ea516a6d02512939baeba04f6aeaa3428f410aad130bd72274bf7d1d3b96"

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
