class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.6/braincode-darwin-arm64.tar.gz"
      sha256 "0cccdd2010479c98b1af61c77868e2c1b6249b6aedf0cae93f4963ebd7905a06"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.6/braincode-darwin-x64.tar.gz"
      sha256 "b9017f43a14b42563e92ccb53a8091be4efaecd61335e1e7a43750b0a8d5c4c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.6/braincode-linux-arm64.tar.gz"
      sha256 "d3c122de1778fb1963028e799a1e2d9932d8e0169861cb490d6e8cecda5a99c0"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.6/braincode-linux-x64.tar.gz"
      sha256 "844ac636ad45e8f4064231f5385f0a01f0c0771a09ce5ce2f4de7e9fab294732"
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
