class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.20"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.20/theme-tape-0.1.20-darwin-arm64.tar.gz"
  sha256 "180a2ef06a16a4f745694536e16f5ea9edf6441a40814dfb1ca8276651b3aa52"
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
