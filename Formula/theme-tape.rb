class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.8"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.8/theme-tape-0.1.8-darwin-arm64.tar.gz"
  sha256 "49b85a605b1d6374ad56a6a1c2a08c354ec423c58a019f138c0971c2702b7769"
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
