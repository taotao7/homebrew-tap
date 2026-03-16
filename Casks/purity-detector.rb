cask "purity-detector" do
  version "1.0.0"
  sha256 "31a5e81e28595f590d3d42f7d6b014d306ccfbe5dd8e276d4f18d210033c63e0"

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
