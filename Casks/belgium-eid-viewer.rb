cask "belgium-eid-viewer" do
  version "5.1.3"
  sha256 "611d8d7708afb842217f73bf75a1798152b42c287600909ee7144598c42a2014"
  
  url "https://eid.belgium.be/sites/default/files/software/eID%20Viewer-#{version}.dmg"
  name "eID Viewer"
  desc "The eID viewer for the Belgian eIDs"
  homepage "https://eid.belgium.be/"
  depends_on cask: "belgium-eid-software"

  livecheck do
    url "https://eid.belgium.be/nl/download/22/license"
    regex(/href=".*\/eID%20Viewer-(\d+\.\d+\.\d+)\.dmg"/)
  end

  app "eID Viewer.app"
end
