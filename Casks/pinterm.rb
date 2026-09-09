# frozen_string_literal: true

cask "pinterm" do
  version "0.4.2"
  sha256 "4ac7ec386bfba9f3b5ae2ac57e6f034a41f006c56f022d8e0169f863388f22c8"

  url "https://github.com/taotao7/PinTerm/releases/download/v#{version}/PinTerm-#{version}-macos-arm64.zip"
  name "PinTerm"
  desc "Borderless desktop terminals powered by Ghostty"
  homepage "https://github.com/taotao7/PinTerm"

  depends_on arch: :arm64
  depends_on macos: :ventura

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
