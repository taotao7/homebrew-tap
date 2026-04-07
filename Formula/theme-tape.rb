class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/cassette-futurism"
  url "https://github.com/taotao7/cassette-futurism/releases/download/theme-tape-v0.1.0/theme-tape-0.1.0-darwin-arm64.tar.gz"
  sha256 "18a547a89e34a9c1bec82b31083d34646386829c369ca249c571fda77dd5e4fc"
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
