class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.1.0/braincode-darwin-arm64.tar.gz"
      sha256 "e63180c29ed1bfb1a0dac29963f13516600f0040355332a327e79fb850990480"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.1.0/braincode-darwin-x64.tar.gz"
      sha256 "c5e006db3e9d927e56f38aff20f7c6d948316edcb177bd9c82fe61ff787c798c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.1.0/braincode-linux-arm64.tar.gz"
      sha256 "0114921640b2fbf216a18cb1bf75c8c4debe71d85b67b0bcc279d7a305b7c707"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.1.0/braincode-linux-x64.tar.gz"
      sha256 "24a47b972735873e851292d8dd794ebd0a30fe629d3a3580d3d8d4eef005f06c"
    end
  end

  def install
    binary = Dir["braincode-*"].first
    odie "no braincode binary in archive" unless binary
    bin.install binary => "braincode"
  end

  test do
    assert_match "Braincode", shell_output("#{bin}/braincode help")
  end
end
