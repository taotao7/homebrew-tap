cask "speakpatch" do
  version "0.1.4"
  sha256 "f499932aff76ea95af48c5263f487b2e3e1acfee8b6515288a634b0712dd91c3"

  url "https://github.com/taotao7/SpeakPatch/releases/download/v#{version}/SpeakPatch-#{version}-macos.zip"
  name "SpeakPatch"
  desc "Menu-bar assistant for rewriting selected text"
  homepage "https://github.com/taotao7/SpeakPatch"

  depends_on macos: :ventura

  app "SpeakPatch.app"

  zap trash: "~/Library/Preferences/com.speakpatch.app.plist"
end
