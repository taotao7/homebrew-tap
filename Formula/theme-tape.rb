class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.11"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.11/theme-tape-0.1.11-darwin-arm64.tar.gz"
  sha256 "3c6c89f2bf5bc58b89f562fa83e35f1a49aa2e700ad506036c4700db3f08b3a7"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "theme-tape"
    (share/"theme-tape").install "themes"
  end

  test do
    assert_match "theme-tape", shell_output("#{bin}/theme-tape --help")
  end
end
