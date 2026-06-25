cask "amazon-quick" do
  version "latest"
  sha256 :no_check

  url "https://desktop.downloads.quick.aws.com/mac/arm64/Amazon-Quick.dmg"
  name "Amazon Quick"
  desc "Amazon Quick desktop application."
  homepage "https://quick.aws.com"

  depends_on arch: :arm64

  app "Amazon Quick.app"

  zap trash: [
    "~/Library/Application Support/Amazon Quick",
    "~/Library/Preferences/com.amazon.QuickWork.mac.plist",
    "~/Library/Saved Application State/com.amazon.QuickWork.mac.savedState",
  ]
end
