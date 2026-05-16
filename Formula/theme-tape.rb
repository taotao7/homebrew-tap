class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.14"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.14/theme-tape-0.1.14-darwin-arm64.tar.gz"
  sha256 "0ea5e51fb1c070bede5b7e785c9c4d9d5bfea4ef89488efed9c68bd1f60fdf3b"
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
