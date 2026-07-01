cask "floaty-mcfloatface" do
  version "0.2.8"
  sha256 "b84ec0df5b52130587b83eb729df65314bd337adfa7a3ebce8b7d4a12e9e33e6"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/Floaty.McFloatFace_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "Floaty McFloatFace.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
