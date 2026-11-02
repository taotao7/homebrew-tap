class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.31"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.31/theme-tape-0.1.31-darwin-arm64.tar.gz"
  sha256 "526749f9ed58f0e1a02adaa1480334b096f9c428a241f736b07487a82e4d2237"
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
