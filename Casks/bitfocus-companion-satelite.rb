cask "bitfocus-companion-satelite" do
  arch arm: "arm64", intel: "x64"

  version "3.7.0,787-1514040"
  sha256 arm:   "6bfd233358e4311c3b19d7c13f45fab22b11e185f87b36bcbad1ce57732e74e8",
         intel: "effa26cfee6c53878db6d14dd6c0c6b21d30d8b05730bd75bc57ce7309388203"

  url "https://cf-pub.bitfocus.io/companion/companion-satellite/companion-satellite-#{arch}-#{version.csv.second}.dmg"
  name "Companion Satellite"
  desc "Satellite surface connector for Bitfocus Companion"
  homepage "https://bitfocus.io/companion"

  livecheck do
    url "https://api.bitfocus.io/v1/product/companion-satellite/packages?limit=30"
    strategy :json do |json|
      json["packages"]&.filter_map do |package|
        next if package["target"] != "mac-arm"

        match = package["uri"]&.match(/companion-satellite-arm64-(\h+-\h+)\.dmg/)
        next if match.blank?

        version = package["version"].delete_prefix("v")
        "#{version},#{match[1]}"
      end
    end
  end

  depends_on :macos

  app "Companion Satellite.app"
end
