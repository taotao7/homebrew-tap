class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.27"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.27/theme-tape-0.1.27-darwin-arm64.tar.gz"
  sha256 "e7296f7ca932676739d9fe273bba279175527771a3cc45e7bd26fd4a81c3f62c"
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
