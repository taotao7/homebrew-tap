class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.29"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.29/theme-tape-0.1.29-darwin-arm64.tar.gz"
  sha256 "1e57c453aa90a1578bc4b4d2bcbc2e9d5d7676a405fe14ff822d93ec82b5cc38"
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
