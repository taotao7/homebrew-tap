cask "floaty-mcfloatface" do
  version "0.2.7"
  sha256 "36ac5e01eb265843da43a683f882edfb12599d37b13615e52c9e0b5854eca332"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/Floaty.McFloatFace_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "Floaty McFloatFace.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
