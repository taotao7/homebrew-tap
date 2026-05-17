class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.17"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.17/theme-tape-0.1.17-darwin-arm64.tar.gz"
  sha256 "a2396d91349e5e9501855e6dba13b835996ac40830fc2770db3f8ce9dbfa055b"
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
