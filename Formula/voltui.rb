class Voltui < Formula
  desc "Cassette-futurism TUI for macOS connected-device batteries"
  homepage "https://github.com/taotao7/voltui"
  url "https://github.com/taotao7/voltui/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "4e94eb65f3fb954e7ea3c95cc78f95e28a114146014a59d59ee3f372437c6ab3"
  license "MIT"
  head "https://github.com/taotao7/voltui.git", branch: "main"

  depends_on :macos
  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voltui --version")
    assert_match "Mac", shell_output("#{bin}/voltui --demo --once")
  end

  def caveats
    <<~EOS
      voltui reads macOS accessory batteries via pmset / IOKit.

        voltui                  # live widget
        voltui --theme beige-terminal
        voltui --init-config    # ~/.config/voltui/config.toml

      Palettes: magnetic-night, beige-terminal
      https://github.com/taotao7/cassette-futurism-theme
    EOS
  end
end
