class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.11/braincode-darwin-arm64.tar.gz"
      sha256 "559d24cd9193a3dce7c86a2c758c77427a7aef04bf5fc38c88075f108f5e994a"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.11/braincode-darwin-x64.tar.gz"
      sha256 "26591268453cbe24d66a8d1ed9ac0b4535b716c5dc043153d71e28a9079c44ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.11/braincode-linux-arm64.tar.gz"
      sha256 "ce2b56edae674366603170131c2f7dc0bbbb365394f0a0854f85d602ee98eba8"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.11/braincode-linux-x64.tar.gz"
      sha256 "b52c87415ca8fd4c59f4cd4c24e3fb78aa22b4c8368571fdc20f7cf544b0f6f8"
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
