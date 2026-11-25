cask "strands-box" do
  version "0.3.1"
  sha256 "64e8668f0867f268127192cad1f5524575c24d9d6bb130ebe0b54dedda145a73"

  url "https://github.com/strands-agents/box/releases/download/v#{version}/box-cli-v#{version}-aarch64-apple-darwin.tar.gz"
  name "Strands Box"
  desc "Run AI coding agents in a sandbox with default-deny policies"
  homepage "https://github.com/strands-agents/box"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  binary "box"
  binary "strands-box-sock-alias"
  binary "strands-box-contain-trampoline"

  zap trash: "~/.strands/box"
end
