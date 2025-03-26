cask "aws-signing-helper" do
  arch arm: "Aarch64", intel: "X86_64"
  version "1.4.0"
  sha256 arm: "2465901fbc47055b33d8adb9d92001bbbbbe0516f4e0d7815c2beccf54fca90a",
    intel: "954f59b4aa091eb4c9cbad589dca76f99a23c56afedeeaf36beb4bca03a8466e"
  url "https://rolesanywhere.amazonaws.com/releases/#{version}/#{arch}/Darwin/aws_signing_helper",
    verified: "https://docs.aws.amazon.com/rolesanywhere/latest/userguide/credential-helper.html"
  name "AWS Signing Helper for Roles Anywhere"
  desc "AWS IAM Roles Anywhere credential helper."
  homepage "https://github.com/aws/rolesanywhere-credential-helper"

  binary "aws_signing_helper"
end
