class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.1/braincode-darwin-arm64.tar.gz"
      sha256 "fa413a8588f79e64992b0890537af3c30d10779753b9fc8903dd015fccf8f416"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.1/braincode-darwin-x64.tar.gz"
      sha256 "e8699067be2485ebc9f5a4d43de36532bb0d2465f43b5a58c14a4458aaf49fa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.1/braincode-linux-arm64.tar.gz"
      sha256 "c69bd147c7bff6156e4dfa0ff19e21cffcf9fe27c442a35b4e3bcc43c538938d"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.1/braincode-linux-x64.tar.gz"
      sha256 "98e4c1dd8ef66035dd53b598315cbe9297d807f5d3e29afa77486328f16656d7"
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
