class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.19"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.19/theme-tape-0.1.19-darwin-arm64.tar.gz"
  sha256 "d455bd899a505389f9eaf1a4661e758b9a7a45b4621df8e6c4d2254c947d7579"
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
