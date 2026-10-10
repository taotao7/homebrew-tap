class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.25"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.25/theme-tape-0.1.25-darwin-arm64.tar.gz"
  sha256 "96c63563358de11d997d2763e0865c1ae1679cb74cf38919673b5394613814ab"
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
