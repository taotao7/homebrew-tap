class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.13"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.13/theme-tape-0.1.13-darwin-arm64.tar.gz"
  sha256 "26e06d7b2333bd2dc8795ce8284e5d56a6e2bd06ddc477924b411a5c046b1398"
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
