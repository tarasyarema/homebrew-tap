cask "pnow" do
  version "0.0.1"
  sha256 "9c4862cb7af986db2cc854caf1f8b2729ac1c0117b17b5bda7a95899ea121a4c"

  url "https://github.com/tarasyarema/pnow/releases/download/v#{version}/pnow-#{version}.zip"
  name "pnow"
  desc "Post now: instant posting from the menu bar"
  homepage "https://github.com/tarasyarema/pnow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "pnow.app"

  zap trash: "~/Library/Application Support/pnow"
end
