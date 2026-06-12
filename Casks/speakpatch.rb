cask "speakpatch" do
  version "0.1.0"
  sha256 "dbd98ebd8b1b06e831b756a528016180e477175f7051cdbd398f3256b983a25b"

  url "https://github.com/taotao7/SpeakPatch/releases/download/v#{version}/SpeakPatch-#{version}-macos.zip",
      verified: "github.com/taotao7/SpeakPatch/"
  name "SpeakPatch"
  desc "Menu-bar assistant for rewriting selected text"
  homepage "https://github.com/taotao7/SpeakPatch"

  depends_on macos: :ventura

  app "SpeakPatch.app"

  zap trash: "~/Library/Preferences/com.speakpatch.app.plist"
end
