cask "speakpatch" do
  version "0.1.1"
  sha256 "80b84744a0f15066b05907dcdc623c32553272e4797c435f3f566ed8391ab904"

  url "https://github.com/taotao7/SpeakPatch/releases/download/v#{version}/SpeakPatch-#{version}-macos.zip"
  name "SpeakPatch"
  desc "Menu-bar assistant for rewriting selected text"
  homepage "https://github.com/taotao7/SpeakPatch"

  depends_on macos: :ventura

  app "SpeakPatch.app"

  zap trash: "~/Library/Preferences/com.speakpatch.app.plist"
end
