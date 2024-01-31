cask "belgium-eid-software" do
  version "5.0.26"
  sha256 "61312109f3e9525f95f47cf171eeec84c08472b7d898e71ee20737202c3ad592"

  url "https://eid.belgium.be/sites/default/files/software/eID-Quickinstaller-#{version}.dmg"
  name "eID Software"
  desc "The eID software for the Belgian eIDs"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/nl/download/16/license"
    regex(/href=".*\/eID-Quickinstaller-(\d+\.\d+\.\d+)\.dmg"/)
  end

  pkg "eID-Quickinstaller-signed.pkg"

  uninstall pkgutil: [
    "be.eid.BEIDtoken.app",
    "be.eid.middleware",
  ]
end
