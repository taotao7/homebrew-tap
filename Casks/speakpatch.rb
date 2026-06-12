cask "speakpatch" do
  version "0.1.2"
  sha256 "10bcb3c3f9888a85c9a34e5d05c83146d7b11e4ec9c6654c5a1f1703266c7cff"

  url "https://github.com/taotao7/SpeakPatch/releases/download/v#{version}/SpeakPatch-#{version}-macos.zip"
  name "SpeakPatch"
  desc "Menu-bar assistant for rewriting selected text"
  homepage "https://github.com/taotao7/SpeakPatch"

  depends_on macos: :ventura

  app "SpeakPatch.app"

  zap trash: "~/Library/Preferences/com.speakpatch.app.plist"
end
