cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.10"
  sha256 arm:   "3cfe83792d43f16dc757e51533e623c88292045b9080ad96ab8c7d7a5aa926b9",
         intel: "1fa93dda7068dae206a62edef7e6f2c6e42927acfc767797e5631a92c89330c7"

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
