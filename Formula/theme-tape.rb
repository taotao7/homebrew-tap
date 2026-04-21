class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.12"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.12/theme-tape-0.1.12-darwin-arm64.tar.gz"
  sha256 "4bce2ab202a92d767fabecbce9fb2e9b92316f2a222212bc18db91d3bee004db"
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
