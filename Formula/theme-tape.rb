class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.23"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.23/theme-tape-0.1.23-darwin-arm64.tar.gz"
  sha256 "f85486de38711963f68ce5e199b1f3b13f75871bc75f052a936f567bd870e53f"
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
