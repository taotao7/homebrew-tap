class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-darwin-arm64.tar.gz"
      sha256 "26987e53e1da18ad1b6002fe85604f56e9971720b7557610ecd6b81a1cc3e517"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-darwin-x64.tar.gz"
      sha256 "9c82638dfa86543900fd103011cf2295c77cc31dad981f74ac5ce455405be1e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-linux-arm64.tar.gz"
      sha256 "09f44f08663ced721279ff17937e928b69e200e97db5a630d16215b994b1a595"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.2/braincode-linux-x64.tar.gz"
      sha256 "0b7edfe911dee48cee0ac5cefbff5f7e93c0ad81a527621bedd33401646f00e0"
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
