class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.22"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.22/theme-tape-0.1.22-darwin-arm64.tar.gz"
  sha256 "f1be7bf9b0b9595747ce64a478b8e35b0da1b3c0ea7f55c3319659c139ca5b4e"
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
