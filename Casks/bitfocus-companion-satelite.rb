cask "bitfocus-companion-satelite" do
    module Utils
        build: "401-24ee487"
    version "1.10.1"
    sha256
      arm:"611d8d7708afb842217f73bf75a1798152b42c287600909ee7144598c42a2014"
      intel: ""
    name: "Companion Satellite"
    desc "Companion Satellite for Bitfocus Companion"
    arch arm: "arm64", intel: "x64"

    url "https://s3.bitfocus.io/builds/companion-satellite/companion-satellite-#{arch}-#{Utils.build}.dmg"
    app "Companion Satellite.app"
end
  