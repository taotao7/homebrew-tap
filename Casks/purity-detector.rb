cask "purity-detector" do
  version "1.1.0"
  sha256 "1d8ea094e427e2461fb50e7904bc11e88d004a88c0f7b4e9fbf47910f173da1c"

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

