cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.4"
  sha256 arm:   "03ae10a3e8183a45dad5cebbc6178eb3b61fc5df8324aa0c3638ae6a7093501b",
         intel: "04471ed04e9b69c470567965b103a170e0db557e0177b7aa37b73167af9a6472"

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
