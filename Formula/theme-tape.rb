class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.30"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.30/theme-tape-0.1.30-darwin-arm64.tar.gz"
  sha256 "b3a932d3c3685a53465322544643f5da34b07cbee1353cfb0a345e6665a20c9e"
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
