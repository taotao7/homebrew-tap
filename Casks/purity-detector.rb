cask "purity-detector" do
  version "1.0.0"
  sha256 "af3b61b93b404f9e5c0bdcad4a489eb26662a9a96f3a0802ec471a27e92600cb"

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
