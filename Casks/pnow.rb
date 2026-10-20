cask "pnow" do
  version "0.1.0"
  sha256 "33dab90d27024fc2e57b942eade9389c630edcf07d9f5b3d1453bbd31709727f"

  url "https://github.com/tarasyarema/pnow/releases/download/v#{version}/pnow-#{version}.zip"
  name "pnow"
  desc "Post now: instant posting from the menu bar"
  homepage "https://github.com/tarasyarema/pnow"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "pnow.app"

  zap trash: "~/Library/Application Support/pnow"
end
