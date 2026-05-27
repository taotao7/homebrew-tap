class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.21"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.21/theme-tape-0.1.21-darwin-arm64.tar.gz"
  sha256 "7010de1e0ff4c93bf7954506afd327c5f25bc1e6e7f39ec6d2782b21d16bd560"
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
