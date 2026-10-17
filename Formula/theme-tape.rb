class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.28"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.28/theme-tape-0.1.28-darwin-arm64.tar.gz"
  sha256 "7f44694004af81280aba57901847d0aefebe3a3d78d910c781afe26edba35410"
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
