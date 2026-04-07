class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.1/theme-tape-0.1.1-darwin-arm64.tar.gz"
  sha256 "c0a221fc704fcf4a427ca6266ec5fe2414120b2d4926c06c275e2c093cd32f2c"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "theme-tape/theme-tape"
    (share/"theme-tape").install "theme-tape/themes"
  end

  test do
    assert_match "theme-tape", shell_output("#{bin}/theme-tape --help")
  end
end
