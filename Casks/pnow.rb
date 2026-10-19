cask "pnow" do
  version "0.0.3"
  sha256 "1c3820c2709ba09e5db8f7eb643ad785ea17fee255f929d5a1a6b21d9f7cea9b"

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
