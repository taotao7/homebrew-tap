class Voltui < Formula
  desc "Cassette-futurism TUI for macOS connected-device batteries"
  homepage "https://github.com/taotao7/voltui"
  url "https://github.com/taotao7/voltui/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "cf6ebb448f8878b2218fc311b2651d1864f257d3b984eae16cf34d21632275ae"
  license "MIT"
  head "https://github.com/taotao7/voltui.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags)
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

  test do
    assert_match version.to_s, shell_output("#{bin}/voltui --version")
    assert_match "Mac", shell_output("#{bin}/voltui --demo --once")
  end
end
