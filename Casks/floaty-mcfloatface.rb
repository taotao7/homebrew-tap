cask "floaty-mcfloatface" do
  version "0.2.6"
  sha256 "4778067ce3166e12ce0e25b36d18667da34ef30efc1c6e9dd63858ddc6cea8ca"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/Floaty.McFloatFace_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "Floaty McFloatFace.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
