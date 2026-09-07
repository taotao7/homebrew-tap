# frozen_string_literal: true

cask "pinterm" do
  version "0.1.0"
  sha256 "e1b3105186a7c0636b1225791734f01328e60838aab53505a3c6ea85a58c44cd"

  url "https://github.com/taotao7/PinTerm/releases/download/v#{version}/PinTerm-#{version}-macos-arm64.zip"
  name "PinTerm"
  desc "Borderless desktop terminals powered by Ghostty"
  homepage "https://github.com/taotao7/PinTerm"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "PinTerm.app"

  uninstall quit: "com.taotao7.pinterm"

  zap trash: [
    "~/Library/Application Support/PinTerm",
    "~/Library/Preferences/com.taotao7.pinterm.plist",
  ]

  caveats <<~EOS
    PinTerm appears in the menu bar, not the Dock.
    This release is ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, review the download source and use
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
