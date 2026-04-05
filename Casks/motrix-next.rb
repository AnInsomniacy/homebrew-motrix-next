cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.1"
  sha256 arm:   "24074912c07b89a26dd7bc30c429bd33a3cb0926b94277bc79af9e83fd16a2a4",
         intel: "e59b571984a79aeee4c457190fdc0f7c871e11bbefb8975d0b28c13c487f8ccc"

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
