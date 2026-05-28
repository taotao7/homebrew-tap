class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.3/braincode-darwin-arm64.tar.gz"
      sha256 "d1edc4c09d5d594984089694b02bfbd52fdb21b5370e8849c0e9d09c888e3af0"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.3/braincode-darwin-x64.tar.gz"
      sha256 "54a940b6ff6e1c9c544fb29114ae11d19df582bbd34b9451743bf6872fb2b5fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.3/braincode-linux-arm64.tar.gz"
      sha256 "80b6c09b950e74eaf44ab5e954da6e43705ca6cd607e5e624c44fa1dc0ddd017"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.3/braincode-linux-x64.tar.gz"
      sha256 "8d46a7006b42438fa8ccd37631fa64e529f0e85872b60c81f5d73f474951acf1"
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
