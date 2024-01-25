cask "ndi-tools-core-suite" do
  version "latest"
  sha256 :no_check

  url "https://downloads.ndi.tv/Tools/NDIToolsInstaller.pkg",
      verified: "https://go.ndi.video/tools-for-mac"
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
    "~/LibrarySaved Application State/com.newtek.Application-Mac-NDI-VirtualInput.savedState",
    "~/LibrarySaved Application State/com.newtek.Test-Patterns-Mac-.savedState",
    "~/LibraryPreferences/com.newtek.Test-Patterns-Mac-.plist",
    "~/LibraryPreferences/com.newtek.Application-Mac-NDI-StudioMonitor.plist",
  ]
end
