cask "speakpatch" do
  version "0.1.3"
  sha256 "97f1a46efd406f8fb8e3d5a20dcac8fef416cab0e78faa9d7564f8e99465422f"

  url "https://github.com/taotao7/SpeakPatch/releases/download/v#{version}/SpeakPatch-#{version}-macos.zip"
  name "SpeakPatch"
  desc "Menu-bar assistant for rewriting selected text"
  homepage "https://github.com/taotao7/SpeakPatch"

  depends_on macos: :ventura

  app "SpeakPatch.app"

  zap trash: "~/Library/Preferences/com.speakpatch.app.plist"
end
