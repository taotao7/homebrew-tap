class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.4/theme-tape-0.1.4-darwin-arm64.tar.gz"
  sha256 "58932c7ea2b10ceb635c797f3a03e0c24f5fd3aef0fb6f8da6e1319eddde2d96"
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
