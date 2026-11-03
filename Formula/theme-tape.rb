class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.32"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.32/theme-tape-0.1.32-darwin-arm64.tar.gz"
  sha256 "d7f7f2fd47cfe8477a45b75adac4c5c6f51090908ff2fee7a2a965b279c0874f"
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
