class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.5/braincode-darwin-arm64.tar.gz"
      sha256 "d5f11109699a753dc0a2eb6d0159773b63e69dd1329637f995e83e2eb2839cac"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.5/braincode-darwin-x64.tar.gz"
      sha256 "48ad107b2440f59a9868a7d973b8f08db79a446cef191ddaeb4a9f07ad30731a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.5/braincode-linux-arm64.tar.gz"
      sha256 "71fd5adca689aaf17f4bd425126606fc5f2ac3c6b0be1670f65a6e3b5ea5cbb7"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.5/braincode-linux-x64.tar.gz"
      sha256 "ea1757878c5737ee93ca8158dbe4510f65c1adc1ceb9614fa046711f56b080f5"
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
