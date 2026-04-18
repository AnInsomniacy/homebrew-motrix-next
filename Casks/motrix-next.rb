cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.2"
  sha256 arm:   "c45b3bcad970dde08cdfeae4a66fd688acaf8904e24cb355ecff28f95209d5a1",
         intel: "08cc84449f07cf7cfcaadad984fc7900f720c2416c54f08d22568620b871c5e7"

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
