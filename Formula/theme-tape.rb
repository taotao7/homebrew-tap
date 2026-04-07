class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.6/theme-tape-0.1.6-darwin-arm64.tar.gz"
  sha256 "e2614031c001a9e951c30c480ee14c875cfc05ab979d99b19de55caec6d7ee54"
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
