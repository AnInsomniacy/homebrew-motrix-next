cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "588e179878535a45d468e7cd3622c3d9e43c3d7f26ae390efb4f890691a65e6e",
         intel: "f6ebed83184bb9d392cf8e3a001db1f80c1e854da9b29e574db9e1d8ef1db09b"

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
