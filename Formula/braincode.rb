class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-darwin-arm64.tar.gz"
      sha256 "a1beb59b52917e565e98031b248d473d23ee4786ab69b2d668aac9290d7b565c"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-darwin-x64.tar.gz"
      sha256 "7e9368df2dfd1374ffc9fcb7d1fe695a964cc6a17e76e5809bc2a59e710a101c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-linux-arm64.tar.gz"
      sha256 "db9fe69c02a2778a099d88aeca198463bf1a3ea0c0c2cf216cf8a029ccf189ae"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-linux-x64.tar.gz"
      sha256 "32a2297067b0d70ec84ba40444bbfba58c435c5e9ee353a8b0d0a5d0ff71d296"
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
