class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.5/theme-tape-0.1.5-darwin-arm64.tar.gz"
  sha256 "a07d4752fea7f2b021cd61c085fb338aedf2ba1fefe9be7331671c71e5d62464"
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
