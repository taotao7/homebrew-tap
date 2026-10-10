class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.26"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.26/theme-tape-0.1.26-darwin-arm64.tar.gz"
  sha256 "ace1116d66d8fc14112cf639c6d9bad318b4df9ce27a973f3ea1fb2d893bf8ab"
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
