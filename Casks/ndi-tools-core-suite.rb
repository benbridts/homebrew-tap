cask "ndi-tools-core-suite" do
  version "latest"
  sha256 :no_check

  url "https://downloads.ndi.tv/Tools/NDIToolsInstaller.pkg"
  name "NDI Core Suite"
  desc "The NDI Core Suite of tools."
  homepage "https://ndi.video/tools/ndi-core-suite/"

  pkg "NDIToolsInstaller.pkg"

  uninstall pkgutil: [
    "com.newtek.NDI-Tools",
    "com.newtek.NDI-HX-Driver",
    "com.newtek.NDI.prefpane",
    "com.newtek.HAL.NDIaudioplugin",
    "com.newtek.DAL.NDIpluginlaunchdaemon",
    "com.newtek.DAL.NDIplugin",
    "com.newtek.NDI-Transmit-AdobeCC",
    "com.newtek.NewTek-Import-SpeedHQ",
    "com.newtek.Test-Patterns-Mac-",
    "com.newtek.ndi.recording",
    "com.newtek.Application-Mac-NDI-StudioMonitor",
    "com.newtek.driver.NDIAudio",
    "com.newtek.NDIVirtualCamera",
    "com.newtek.Application-Mac-NDI-VirtualInput",
    "com.newtek.Application-Mac-NDI-AccessManager",
    "com.newtek.Application-Mac-NDI-ScanConverter",
  ]
  uninstall launchctl: [
    "com.newtek.cmio.DPA.NDI",
  ]

  zap trash: [
    # find /Library -iname '*newtek*'
    "/Library/Application Support/NewTek/NDI",
    # find ~/Library -iname '*newtek*'
    "~/Library/Saved Application State/com.newtek.Application-Mac-NDI-VirtualInput.savedState",
    "~/Library/Saved Application State/com.newtek.Test-Patterns-Mac-.savedState",
    "~/Library/Preferences/com.newtek.Test-Patterns-Mac-.plist",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-StudioMonitor.plist",
  ]
end
