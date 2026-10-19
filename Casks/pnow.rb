cask "pnow" do
  version "0.0.2"
  sha256 "2b854eea964414501a938e1d4f0814ff481fccdabb8bb0579bb95c9a405f1507"

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
