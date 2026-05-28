class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.4/braincode-darwin-arm64.tar.gz"
      sha256 "f00723f4fe29f38d3d0b64a7176a4215280a08fcb8c1ec270f1adbd22e39a445"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.4/braincode-darwin-x64.tar.gz"
      sha256 "0a00cadfa1c6434cdb8d1341a300649afa22ae8003710cccbe16f0d6d50d9ca5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.4/braincode-linux-arm64.tar.gz"
      sha256 "761cda49943489fb95e7eeb61eef824c2946d25d8f6aeb0f06fddda1479b856c"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.4/braincode-linux-x64.tar.gz"
      sha256 "b40b021d43aea8f0b1999cebf2f6c217f074f794906871cfccbedca63f22e6a6"
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
