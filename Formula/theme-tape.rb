class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.0/theme-tape-0.1.0-darwin-arm64.tar.gz"
  sha256 "83919eb945fd880fcb5b316ad1c8d6cc9cc88e95bb262856a7c3d925b5effca5"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "theme-tape"
  end

  test do
    assert_match "theme-tape", shell_output("#{bin}/theme-tape --help")
  end
end
