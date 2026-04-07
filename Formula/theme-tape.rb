class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.9"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.9/theme-tape-0.1.9-darwin-arm64.tar.gz"
  sha256 "76a313b37097281c4f51e2abdf07ee8f076ea7457e22a3bbd8ecd51ac3cdbe50"
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
