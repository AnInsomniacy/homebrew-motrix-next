cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.3"
  sha256 arm:   "88bd1704d4a9923a1b230061e25ba47a9dfa7788048e85d78a3d1c3656570675",
         intel: "efcfa98515d459402e2be1c59b46b674fe7ed33160bbaa5336646efc61fd877b"

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
