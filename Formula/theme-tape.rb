class ThemeTape < Formula
  desc "Terminal theme switcher for Cassette Futurism and Zenith"
  homepage "https://github.com/taotao7/theme-tape"
  version "0.1.15"
  url "https://github.com/taotao7/theme-tape/releases/download/theme-tape-v0.1.15/theme-tape-0.1.15-darwin-arm64.tar.gz"
  sha256 "0f8550be7e59b5b20beb01c20313f79a94da929be42642d961c51adc9a043a45"
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
