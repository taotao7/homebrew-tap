cask "floaty-mcfloatface" do
  version "0.2.3"
  sha256 "d031b885839e2f12d591a9b03670724effb0693c4db4583fc9d2153c764a16dc"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/floaty-mcfloatface_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "floaty-mcfloatface.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
