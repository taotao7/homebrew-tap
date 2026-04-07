class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.7/theme-tape-0.1.7-darwin-arm64.tar.gz"
  sha256 "67718d477e385af687ea54b76e7aa628342e384cc3d056a391cff9bed793faf5"
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
