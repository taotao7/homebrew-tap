class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.6/braincode-darwin-arm64.tar.gz"
      sha256 "ef1d2ed7961c2b943b106f67c02890ab01bbf0415ebb9550401338cecc51fe1d"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.6/braincode-darwin-x64.tar.gz"
      sha256 "3de512327c481246e147bd9bb3135270886925c3dadbda5230f0227d88652741"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.6/braincode-linux-arm64.tar.gz"
      sha256 "e92fda2e0d4b52d66c52a9100e48faa454bf76bd982de6de752e40834a21edb5"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.6/braincode-linux-x64.tar.gz"
      sha256 "756d54cd90196e58998f0012dbcab0cc77cdbfa35e6a0c2d9b6eb5238f8913d3"
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
