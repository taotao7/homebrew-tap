class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.24"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.24/theme-tape-0.1.24-darwin-arm64.tar.gz"
  sha256 "a83bf88e56a6db9ed8322bb5eee291d9bd34ed067ce9eab37ce45a83d6831ba4"
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
