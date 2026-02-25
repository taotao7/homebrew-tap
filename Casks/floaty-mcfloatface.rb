cask "floaty-mcfloatface" do
  version "0.2.3"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  url "https://github.com/taotao7/Floaty-McFloatFace/releases/download/v#{version}/floaty-mcfloatface_#{version}_aarch64.dmg"
  name "Floaty McFloatFace"
  desc "Camera overlay for streaming and screen recording"
  homepage "https://github.com/taotao7/Floaty-McFloatFace"
  app "floaty-mcfloatface.app"
  zap trash: ["~/Library/Application Support/com.tao.floaty-mcfloatface"]
end
