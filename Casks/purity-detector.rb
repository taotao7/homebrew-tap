cask "purity-detector" do
  version "1.2.0"
  sha256 "b07833d4ef91b585a065ce8bb272cd87f1bf5d888156547dba93bcdc7bbbb321"

  url "https://github.com/taotao7/PurityDetector/releases/download/v#{version}/PurityDetector.zip"
  name "Purity Detector"
  desc "macOS menu bar app that monitors IP address purity score"
  homepage "https://github.com/taotao7/PurityDetector"

  depends_on macos: ">= :ventura"

  app "PurityDetector.app"

  zap trash: [
    "~/Library/Preferences/co.puritydetector.app.plist",
  ]
end
