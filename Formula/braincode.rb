class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.9/braincode-darwin-arm64.tar.gz"
      sha256 "ff226b3dddffa3f9101626b51fa250b71a09106e8f352831625e02a78449f08f"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.9/braincode-darwin-x64.tar.gz"
      sha256 "40808229ec1cc92d517ec7bc6f6eae2f68ff67182a10ac55d4f5bd57fe3459d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.9/braincode-linux-arm64.tar.gz"
      sha256 "8f85c5bcca7790d42db6c532b2919a21f678a8d50a7c21a10c39e8b18ee44943"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.9/braincode-linux-x64.tar.gz"
      sha256 "fdf0fdc8fe4a3624dbc0e6bf5efb65a5266db5030c36653dc43e0d31ed5445da"
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
