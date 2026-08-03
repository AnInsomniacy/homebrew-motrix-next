cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.7"
  sha256 arm:   "c0e5118ce36230a6541111a7002d22df15e8e69886c91862ff0f8b3d372d8017",
         intel: "9aa69fb40eba5deadc1e3a0af88361d07a3ea80d7402cbf67d424375d36c94d2"

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
