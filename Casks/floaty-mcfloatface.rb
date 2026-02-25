cask "floaty-mcfloatface" do
  version "0.2.4"
  sha256 "3fcfb0db24e5ce3308e22e2195371d07816925be31b2cbdd99e24f7a64b54e17"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/Floaty.McFloatFace_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "Floaty McFloatFace.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
