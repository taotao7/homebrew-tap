class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.10"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.10/theme-tape-0.1.10-darwin-arm64.tar.gz"
  sha256 "d07bca0300e49179dc9de4681ff0ef9b2525a7df8dd07cb708419ce370a18fbf"
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
