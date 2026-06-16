cask "motrix-next" do
  arch arm: "aarch64", intel: "x64"

  version "3.9.5"
  sha256 arm:   "587905013bdd64338cab80ce07ec7b08a47384f9dc8e542cfad198e9578dc496",
         intel: "cd7679d73f1f84b80928f6757a94e61ed8c2c51f04b3cc35064aaa8e1d293cdf"

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
