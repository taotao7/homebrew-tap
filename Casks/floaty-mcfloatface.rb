cask "floaty-mcfloatface" do
  version "0.3.1"
  sha256 "644f7a0b410eb6a7db0834cce2206aab2f32d1a7efe22fd45c203432621f0449"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/Floaty.McFloatFace_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "Floaty McFloatFace.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
