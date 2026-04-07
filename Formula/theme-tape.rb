class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.3/theme-tape-0.1.3-darwin-arm64.tar.gz"
  sha256 "6c56cf7290065fb8de59938489b5b1556ecafd552f7cf3e4d68c73e716deb553"
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
