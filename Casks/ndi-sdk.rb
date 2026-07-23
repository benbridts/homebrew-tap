cask "ndi-sdk" do
  version "latest"
  sha256 :no_check

  url "https://downloads.ndi.tv/SDK/NDI_SDK_Mac/Install_NDI_SDK_v6_Apple.pkg",
      verified: "downloads.ndi.tv/SDK/"
  name "NDI SDK"
  desc "The NDI Software Development Kit for Apple platforms."
  homepage "https://ndi.video/for-developers/ndi-sdk/"

  pkg "Install_NDI_SDK_v6_Apple.pkg"

  uninstall pkgutil: [
    "com.newtek.NDI.SDK",
  ]

  zap trash: [
    "/Library/NDI SDK for Apple",
  ]
end
