class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.18"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.18/theme-tape-0.1.18-darwin-arm64.tar.gz"
  sha256 "a6886e7cc5cdef4586c4277a43258376c7ddbe29b1b376233d91a24833814c11"
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
